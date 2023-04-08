function print_in_color {
  local text=$1
  local color=$2

  case $color in
    "green") echo -e "\033[0;32m$text\033[0m" ;;
    "red") echo -e "\033[0;31m$text\033[0m" ;;
    *) echo -e "\033[0;37m$text\033[0m"  # default to white
  esac
}

function test_equals {
  local actual=$1
  local expected=$2

  if [ "$expected" == "$actual" ]; then
    print_in_color "Success: $actual is $expected" "green"
  else
    print_in_color "Failed: $actual is not $expected" "red"
  fi
}

function assert_exits_has_correct_owner_group_and_permissions {
  local path=$1
  local expected_owner=$2
  local expected_group=$3
  local expected_permissions=$4

  if test -e "$path"
  then
    print_in_color "Success: $path exists" "green"

    actual_owner=$(stat -c %U $path)
    actual_group=$(stat -c %G $path)
    actual_permissions=$(stat -c "%a" $path)

    if [ "$actual_owner" == "$expected_owner" ]
    then
      print_in_color "Success: $path has the correct owner" "green"
    else
      print_in_color "Failed: $path has incorrect owner -> actual: $actual_owner, expected: $expected_owner" "red"
    fi

    if [ "$actual_group" == "$expected_group" ]
    then
      print_in_color "Success: $path is in the correct group" "green"
    else
      print_in_color "Failed $path is in the incorrect group -> actual: $actual_group, expected: $expected_group" "red"
    fi

    if [ "$actual_permissions" -eq "$expected_permissions" ]
    then
      print_in_color "Success: $path has the correct permissions" "green"
    else
      print_in_color "Failed $path has not the correct permissions -> actual: $actual_permissions, expected: $expected_permissions" "red"
    fi

  else
    print_in_color "Failed $path does not exist" "red"
  fi
}

function assert_does_not_exist {
    local path=$1

    if test -e "$path"
    then
        print_in_color "Failed: $path still exists" "red"
    else
        print_in_color "Success: $path deleted" "green"
    fi
}

function check_command {
    local command=$1

    if $command --version > /dev/null 2>&1; then
        print_in_color "Success: $command is installed" "green"
    else
        print_in_color "Failed: $command is not installed" "red"
    fi
}
