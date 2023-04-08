#! /bin/bash
source ./tests/utils.sh

echo -e "\nTesting the zsh task\n"

assert_exits_has_correct_owner_group_and_permissions "/usr/bin/zsh" "root" "root" 755
assert_exits_has_correct_owner_group_and_permissions "/home/lorenzo/.oh-my-zsh/" "lorenzo" "lorenzo" 755
assert_exits_has_correct_owner_group_and_permissions "/home/lorenzo/.oh-my-zsh/custom/themes/spaceship-prompt/" "lorenzo" "lorenzo" 775
assert_exits_has_correct_owner_group_and_permissions "/home/lorenzo/.oh-my-zsh/plugins/z/" "lorenzo" "lorenzo" 755
assert_exits_has_correct_owner_group_and_permissions "/home/lorenzo/.oh-my-zsh/custom/plugins/zsh-autosuggestions/" "lorenzo" "lorenzo" 775

if [ "$SHELL" == "/usr/bin/zsh" ]; then
  print_in_color "Success: running zsh" "green"
else
  print_in_color "Failed: not running zsh :( (current shell: "$SHELL")" "red"
fi

current_user=$(whoami)
default_shell=$(grep "^$current_user" /etc/passwd | cut -d: -f7)

if [ "$default_shell" == "/usr/bin/zsh" ]; then
    print_in_color "Success: Default shell is Zsh" "green"
else
    print_in_color "Failed: Default shell is not Zsh, "$default_shell" " "red"
fi
