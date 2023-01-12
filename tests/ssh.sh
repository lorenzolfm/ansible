#!/bin/bash
source ./tests/utils.sh

directory="/home/lorenzo/.ssh"

echo -e "\nTesting ssh setup...\n"

assert_exits_has_correct_owner_group_and_permissions "/home/lorenzo/.ssh" "lorenzo" "lorenzo" 700
assert_exits_has_correct_owner_group_and_permissions "/home/lorenzo/.ssh/id_rsa" "lorenzo" "lorenzo" 600
assert_exits_has_correct_owner_group_and_permissions "/home/lorenzo/.ssh/id_rsa.pub" "lorenzo" "lorenzo" 644
assert_exits_has_correct_owner_group_and_permissions "/home/lorenzo/.ssh/known_hosts" "lorenzo" "lorenzo" 644
