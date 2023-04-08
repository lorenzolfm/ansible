source ./tests/utils.sh

echo -e "\nTesting telescope dependencies...\n"

assert_exits_has_correct_owner_group_and_permissions "/usr/bin/fdfind" "root" "root" 777
assert_exits_has_correct_owner_group_and_permissions "/home/lorenzo/.local/bin/fd" "lorenzo" "lorenzo" 777
assert_exits_has_correct_owner_group_and_permissions "/usr/bin/rg" "root" "root" 755

echo -e "\nTesting NeoVim...\n"

assert_exits_has_correct_owner_group_and_permissions "/home/lorenzo/nvim.appimage" "lorenzo" "lorenzo" 775

echo -e "\nTesting Packer Sync...\n"

assert_exits_has_correct_owner_group_and_permissions "/home/lorenzo/.local/share/nvim/site/pack/packer/start/packer.nvim" "lorenzo" "lorenzo" 775
