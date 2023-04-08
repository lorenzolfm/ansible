source ./tests/utils.sh

echo -e "\nTesting Docker ...\n"

assert_exits_has_correct_owner_group_and_permissions "/usr/bin/docker" "root" "root" 755

echo -e "\nTesting docker-compose ...\n"

assert_exits_has_correct_owner_group_and_permissions "/usr/local/bin/docker-compose" "root" "root" 755
