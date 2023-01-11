#!/bin/bash
source ./tests/utils.sh

directory="/home/lorenzo/.ssh"

echo -e "\nTesting ssh setup...\n"

test_directory_owner_group_and_permissions "/home/lorenzo/.ssh" "lorenzo" "lorenzo" 700
test_file_owner_group_and_permissions "/home/lorenzo/.ssh/id_rsa" "lorenzo" "lorenzo" 600
test_file_owner_group_and_permissions "/home/lorenzo/.ssh/id_rsa.pub" "lorenzo" "lorenzo" 644
test_file_owner_group_and_permissions "/home/lorenzo/.ssh/known_hosts" "lorenzo" "lorenzo" 644
