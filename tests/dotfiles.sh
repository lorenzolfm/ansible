#! /bin/bash
source ./tests/utils.sh

echo -e "\nTesting the dotfiles setup\n"

assert_exits_has_correct_owner_group_and_permissions "/home/lorenzo/.gitignore" "lorenzo" "lorenzo" 664

assert_exits_has_correct_owner_group_and_permissions "/home/lorenzo/.cfg" "lorenzo" "lorenzo" 775
assert_exits_has_correct_owner_group_and_permissions "/home/lorenzo/.config/nvim" "lorenzo" "lorenzo" 775
assert_exits_has_correct_owner_group_and_permissions "/home/lorenzo/.ssh/config" "lorenzo" "lorenzo" 604
assert_exits_has_correct_owner_group_and_permissions "/home/lorenzo/.aliases" "lorenzo" "lorenzo" 664
assert_exits_has_correct_owner_group_and_permissions "/home/lorenzo/.gitconfig" "lorenzo" "lorenzo" 664
assert_exits_has_correct_owner_group_and_permissions "/home/lorenzo/.tmux.conf" "lorenzo" "lorenzo" 664
assert_exits_has_correct_owner_group_and_permissions "/home/lorenzo/.zshenv" "lorenzo" "lorenzo" 664
assert_exits_has_correct_owner_group_and_permissions "/home/lorenzo/.zshrc" "lorenzo" "lorenzo" 664

if grep -Fxq ".cfg" /home/lorenzo/.gitignore; then
  print_in_color "Success: .gitignore ignores .cfg" "green"
else
  print_in_color "Failed: .gitignore is not ignoring .cfg" "red"
fi
