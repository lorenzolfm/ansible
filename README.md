# Ansible

Have you ever lost dozens of hours trying to get a new machine up to date with all you need in your day to day life?

Ansible is a great tool to solve this problem!

This repo has an ansible-playbook that installs and configs all the stuff I need in my computer, including:
* ssh keys
* my personal dotfiles
* all programming languages I use + dependencies
* custom fonts
* tmux
* zsh
* neovim

# Testing

Obviously I don't want to test this playbook by reinstalling my OS and running the playbook, so I created a docker container that simulates my OS

I also created bashscripts to test that everything works as expected, so I don't have to do this boring stuff manually

# Running

This is how I run the playbook:

`ansible-playbook local.yml --ask-vault-pass --extra-vars "home=/home/lorenzo" -K`