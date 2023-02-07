# Ansible

Have you ever lost dozens of hours trying to get a new machine up and running with all you need in your day-to-day life?

Ansible is a great tool to solve this problem!

This repo has an ansible-playbook that installs and configs all the stuff I need on my computer, including:
* ssh keys
* my dotfiles
* all programming languages I use + dependencies
* custom fonts
* tmux
* zsh
* neovim

# Testing
I don't want to test this playbook by reinstalling my OS and running the playbook, so I created a docker container that simulates my OS

I also created bash scripts to test that everything works as expected, so I don't have to do this boring stuff manually

# Running

This is how I run the playbook:

`ansible-playbook local.yml --ask-vault-pass --extra-vars "home=/home/lorenzo" -K`
