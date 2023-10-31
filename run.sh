#! /bin/bash

# Run playbook
ansible-playbook local.yml --ask-vault-pass --extra-vars "home=/home/lorenzo" -K

# Change shell
chsh -s $(which zsh)

# Source env
source ~/.zshenv

# Install The missing software
rustup default stable
cargo install sd, exa, bat

# Run the tests
bash ./tests/run_all_tests.sh
