#! /bin/bash

echo "Testing if the dockerfile did what was expected..."

current_username=$(whoami)
current_workdir=$(pwd)

test_equals() {
  local actual=$1
  local expected=$2

  if [ "$expected" == "$actual" ]; then
    echo "Success: $actual is $expected"
  else
    echo "Error: $actual is not $expected"
  fi
}

test_equals $current_username  "lorenzo"
test_equals $current_workdir "/home/lorenzo"
