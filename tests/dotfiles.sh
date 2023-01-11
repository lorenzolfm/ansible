#! /bin/bash
source ./tests/utils.sh

echo -e "Testing the dotfiles setup\n"

test_file_owner_group_and_permissions "/home/lorenzo/.gitignore" "lorenzo" "lorenzo" 664

if grep -Fxq ".cfg" /home/lorenzo/.gitignore; then
  print_green "Success: .gitignore ignores .cfg"
else
  print_in_red "Failed: .gitignore is not ignoring .cfg"
fi

test_directory_owner_group_and_permissions "/home/lorenzo/.cfg" "lorenzo" "lorenzo" 775

# TODO: Test if created all the stuff from the dotfiles repo
# TODO: Test if showUntrackedFiles is equal to no in the config file in .cfg
