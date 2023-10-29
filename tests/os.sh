#! /bin/bash
source ./tests/utils.sh

echo -e "\nTesting the i3 task\n"

assert_exits_has_correct_owner_group_and_permissions "/usr/bin/i3" "root" "root" 755
assert_exits_has_correct_owner_group_and_permissions "/usr/bin/picom" "root" "root" 755
assert_exits_has_correct_owner_group_and_permissions "/usr/bin/rofi" "root" "root" 755
assert_exits_has_correct_owner_group_and_permissions "/usr/bin/polybar" "root" "root" 755
assert_exits_has_correct_owner_group_and_permissions "/usr/bin/playerctl" "root" "root" 755
