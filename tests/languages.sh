#!/bin/bash
source ./tests/utils.sh

echo -e "\nTesting the languages task...\n"

source /home/lorenzo/.zshenv

check_command rustc # failing
check_command node # not passing but installed
check_command npm # not passing but installed

assert_exits_has_correct_owner_group_and_permissions "/home/lorenzo/.nvm" "lorenzo" "lorenzo" 775
