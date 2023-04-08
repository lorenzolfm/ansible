#! /bin/bash
source ./tests/utils.sh

echo -e "Testing if the dockerfile did what was expected...\n"

current_username=$(whoami)
current_workdir=$(pwd)

test_equals $current_username  "lorenzo"
test_equals $current_workdir "/home/lorenzo/ansible"

echo -e "\nTesting if lorenzo:lorenzo owns the encrypted .ssh folder...\n"


assert_exits_has_correct_owner_group_and_permissions "/home/lorenzo/ansible/.ssh" "lorenzo" "lorenzo" 775
