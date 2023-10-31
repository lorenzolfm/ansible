#! /bin/bash
source ./tests/utils.sh

echo -e "\nTesting the dotfiles setup\n"

assert_exits_has_correct_owner_group_and_permissions "/home/lorenzo/.config/nvim" "lorenzo" "lorenzo" 775
assert_exits_has_correct_owner_group_and_permissions "/home/lorenzo/.config/i3" "lorenzo" "lorenzo" 775
assert_exits_has_correct_owner_group_and_permissions "/home/lorenzo/.config/i3status" "lorenzo" "lorenzo" 775
assert_exits_has_correct_owner_group_and_permissions "/home/lorenzo/.config/picom" "lorenzo" "lorenzo" 775
assert_exits_has_correct_owner_group_and_permissions "/home/lorenzo/.config/polybar" "lorenzo" "lorenzo" 775
assert_exits_has_correct_owner_group_and_permissions "/home/lorenzo/.config/rofi" "lorenzo" "lorenzo" 775
assert_exits_has_correct_owner_group_and_permissions "/home/lorenzo/.config/spaceship.zsh" "lorenzo" "lorenzo" 664
assert_exits_has_correct_owner_group_and_permissions "/home/lorenzo/.config/theme" "lorenzo" "lorenzo" 775
assert_exits_has_correct_owner_group_and_permissions "/home/lorenzo/.ssh/config" "lorenzo" "lorenzo" 777
assert_exits_has_correct_owner_group_and_permissions "/home/lorenzo/.aliases" "lorenzo" "lorenzo" 777
assert_exits_has_correct_owner_group_and_permissions "/home/lorenzo/.gitconfig" "lorenzo" "lorenzo" 777
assert_exits_has_correct_owner_group_and_permissions "/home/lorenzo/.tmux.conf" "lorenzo" "lorenzo" 777
assert_exits_has_correct_owner_group_and_permissions "/home/lorenzo/.zshenv" "lorenzo" "lorenzo" 777
assert_exits_has_correct_owner_group_and_permissions "/home/lorenzo/.zshrc" "lorenzo" "lorenzo" 777
