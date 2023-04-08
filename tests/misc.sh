source ./tests/utils.sh

echo -e "\nTesting misc setup...\n"

echo -e "\nTesting terminal settings...\n"

dconf dump /org/gnome/terminal/ > current-preferences.dconf

if diff -q current-preferences.dconf gnome-terminal-preferences.dconf >/dev/null; then
    print_in_color "Success: terminal preferences updated" "green"
else
    print_in_color "Failed: terminal settings failed to update" "red"
fi

rm current-preferences.dconf

echo -e "\nTesting keepass...\n"

assert_exits_has_correct_owner_group_and_permissions "/usr/bin/keepassxc" "root" "root" 755
assert_exits_has_correct_owner_group_and_permissions "/home/lorenzo/pwds" "lorenzo" "lorenzo" 775

echo -e "\nTesing Nerdfonts...\n"

assert_exits_has_correct_owner_group_and_permissions "/home/lorenzo/.local/share/fonts/NerdFonts" "lorenzo" "lorenzo" 775
assert_does_not_exist "/home/lorenzo/nerd-fonts"

echo -e "\nTesting Spotify...\n"

assert_exits_has_correct_owner_group_and_permissions "/usr/bin/spotify" "lorenzo" "lorenzo" 777

echo -e "\nTesting Brave...\n"

assert_exits_has_correct_owner_group_and_permissions "/usr/bin/brave-browser" "root" "root" 777

echo -e "\nTesting Slack...\n"

assert_exits_has_correct_owner_group_and_permissions "/usr/bin/slack" "root" "root" 777

echo -e "\nTesting Discord...\n"

assert_exits_has_correct_owner_group_and_permissions "/usr/bin/discord" "root" "root" 777

echo -e "\nTesting Telegram...\n"

assert_exits_has_correct_owner_group_and_permissions "/usr/bin/telegram-desktop" "root" "root" 755

echo -e "\nTesting Bitwarden...\n"

assert_exits_has_correct_owner_group_and_permissions "/home/lorenzo/.local/bin/bitwarden.AppImage" "lorenzo" "lorenzo" 775

echo -e "\nTesting Sparrow...\n"

assert_exits_has_correct_owner_group_and_permissions "/opt/sparrow/" "root" "root" 755
