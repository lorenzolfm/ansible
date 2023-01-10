#!/bin/bash
source ./tests/utils.sh

directory="/home/lorenzo/.ssh"

echo -e "\nTesting ssh setup...\n"

test_directory_owner_group_and_permissions "/home/lorenzo/.ssh" "lorenzo" "lorenzo" 700
