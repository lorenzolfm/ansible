function print_green {
  local text=$1

  echo -e "\033[0;32m$text\033[0m"
}

function print_in_red {
  local text=$1

  echo -e "\033[0;31m$text\033[0m"
}

function test_equals {
  local actual=$1
  local expected=$2

  if [ "$expected" == "$actual" ]; then
    print_green "Success: $actual is $expected"
  else
    print_in_red "Failed: $actual is not $expected"
  fi
}

function test_directory_owner_group_and_permissions {
  local directory=$1
  local expected_owner=$2
  local expected_group=$3
  local expected_permissions=$4

  if test -d "$directory"
  then
    echo -e "\033[32mSuccess: $directory exists\033[0m"

    actual_owner=$(stat -c %U $directory)
    actual_group=$(stat -c %G $directory)
    actual_permissions=$(stat -c "%a" $directory)

    if [ "$actual_owner" == "$expected_owner" ]
    then
      print_green "Success: $directory has the correct owner"
    else
      print_in_red "Failed: $directory has incorrect owner -> actual: $actual_owner, expected: $expected_owner"
    fi

    if [ "$actual_group" == "$expected_group" ]
    then
      print_green "Success: $directory is in the correct group"
    else
      print_in_red "Failed $directory is in the incorrect group -> actual: $actual_group, expected: $expected_group"
    fi

    if [ "$actual_permissions" -eq "$expected_permissions" ]
    then
      print_green "Success: $directory has the correct permissions"
    else
      print_in_red "Failed $directory has not the correct persmissions, -> actual: $actual_permissions, expected: $expected_permissions"
    fi

  else
    print_in_red "Failed $directory does not exists"
  fi
}

function test_file_owner_group_and_permissions {
  local file=$1
  local expected_owner=$2
  local expected_group=$3
  local expected_permissions=$4

  if test -f "$file"
  then
    echo -e "\033[32mSuccess: $file exists\033[0m"

    actual_owner=$(stat -c %U $file)
    actual_group=$(stat -c %G $file)
    actual_permissions=$(stat -c "%a" $file)

    if [ "$actual_owner" == "$expected_owner" ]
    then
      print_green "Success: $file has the correct owner"
    else
      print_in_red "Failed: $file has incorrect owner -> actual: $actual_owner, expected: $expected_owner"
    fi

    if [ "$actual_group" == "$expected_group" ]
    then
      print_green "Success: $file is in the correct group"
    else
      print_in_red "Failed $file is in the incorrect group -> actual: $actual_group, expected: $expected_group"
    fi

    if [ "$actual_permissions" -eq "$expected_permissions" ]
    then
      print_green "Success: $file has the correct permissions"
    else
      print_in_red "Failed $file has not the correct persmissions -> actual: $actual_permissions, expected: $expected_permissions"
    fi

  else
    print_in_red "Failed $file does not exists"
  fi
}
