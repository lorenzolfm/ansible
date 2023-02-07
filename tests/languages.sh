#!/bin/bash
source ./tests/utils.sh

echo -e "\nTesting the languages task\n"

source /home/lorenzo/.zshenv

if rustc --version > /dev/null 2>&1; then
    print_in_color "Success: Rust is installed" "green"
else
    print_in_color "Failed: Rust is not installed" "red"
fi
