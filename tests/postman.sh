source ./tests/utils.sh

echo -e "\nTesting postman setup...\n"

assert_exits_has_correct_owner_group_and_permissions "/usr/bin/postman" "root" "root" 777
