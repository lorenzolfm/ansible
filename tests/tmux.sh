source ./tests/utils.sh

echo -e "\nTesting the tmux task\n"

assert_exits_has_correct_owner_group_and_permissions "/usr/bin/tmux" "root" "root" 755
assert_exits_has_correct_owner_group_and_permissions "/home/lorenzo/.tmux/plugins/tpm" "lorenzo" "lorenzo" 775
