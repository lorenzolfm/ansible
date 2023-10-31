source ./tests/utils.sh

echo -e "\nTesting misc setup...\n"

echo -e "\nTesting terminal settings...\n"

dconf dump /org/gnome/terminal/ > current-preferences.dconf

if diff -q current-preferences.dconf gnome-terminal-preferences.dconf >/dev/null; then
    print_in_color "Success: terminal preferences is equal to config file" "green"
else
    print_in_color "Failed: terminal settings is different from config file" "red"
fi

rm current-preferences.dconf

echo -e "\nTesing Nerdfonts...\n"

assert_exits_has_correct_owner_group_and_permissions "/home/lorenzo/.local/share/fonts/NerdFonts" "lorenzo" "lorenzo" 775
assert_does_not_exist "/home/lorenzo/nerd-fonts"

echo -e "\nTesting Spotify...\n"

assert_exits_has_correct_owner_group_and_permissions "/usr/bin/spotify" "root" "root" 777

echo -e "\nTesting Brave...\n"

assert_exits_has_correct_owner_group_and_permissions "/usr/bin/brave-browser" "root" "root" 777

echo -e "\nTesting Slack...\n"

assert_exits_has_correct_owner_group_and_permissions "/usr/bin/slack" "root" "root" 777

echo -e "\nTesting Discord...\n"

assert_exits_has_correct_owner_group_and_permissions "/usr/bin/discord" "root" "root" 777

echo -e "\nTesting Telegram...\n"

assert_exits_has_correct_owner_group_and_permissions "/usr/bin/telegram-desktop" "root" "root" 755

echo -e "\nTesting Bitwarden...\n"

assert_exits_has_correct_owner_group_and_permissions "/home/lorenzo/.local/bin/bitwarden.AppImage" "root" "root" 775

echo -e "\nTesting Sparrow...\n"

assert_exits_has_correct_owner_group_and_permissions "/opt/sparrow/" "root" "root" 755

echo -e "\nTesting Htop...\n"

assert_exits_has_correct_owner_group_and_permissions "/usr/bin/htop" "root" "root" 755

echo -e "\nTesting Obs-Studio...\n"

assert_exits_has_correct_owner_group_and_permissions "/usr/bin/obs" "root" "root" 755

echo -e "\nTesting Kdenlive...\n"

assert_exits_has_correct_owner_group_and_permissions "/home/lorenzo/.local/bin/kdenlive.AppImage" "root" "root" 775

echo -e "\nTesting Audacity...\n"

assert_exits_has_correct_owner_group_and_permissions "/home/lorenzo/.local/bin/audacity.AppImage" "root" "root" 775

echo -e "\nTesting Xclip...\n"

assert_exits_has_correct_owner_group_and_permissions "/usr/bin/xclip" "root" "root" 755

echo -e "\nTesting Neofetch...\n"

assert_exits_has_correct_owner_group_and_permissions "/usr/bin/neofetch" "root" "root" 755

echo -e "\nTesting sd...\n"

assert_exits_has_correct_owner_group_and_permissions "/home/lorenzo/.cargo/bin/sd" "lorenzo" "lorenzo" 775

echo -e "\nTesting exa...\n"

assert_exits_has_correct_owner_group_and_permissions "/home/lorenzo/.cargo/bin/exa" "lorenzo" "lorenzo" 775

echo -e "\nTesting bat...\n"

assert_exits_has_correct_owner_group_and_permissions "/home/lorenzo/.cargo/bin/bat" "lorenzo" "lorenzo" 775
