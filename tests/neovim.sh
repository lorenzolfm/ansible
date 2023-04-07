echo -e "\nTesting telescope dependencies...\n"

assert_exits_has_correct_owner_group_and_permissions "/usr/bin/fdfind" "root" "root" 777
assert_exits_has_correct_owner_group_and_permissions "/home/lorenzo/.local/bin/fd" "lorenzo" "lorenzo" 777
assert_exits_has_correct_owner_group_and_permissions "/usr/bin/rg" "root" "root" 755
