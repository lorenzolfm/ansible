source ./tests/utils.sh

echo -e "\nTesting gh setup...\n"

assert_exits_has_correct_owner_group_and_permissions "/usr/bin/gh" "root" "root" 755
