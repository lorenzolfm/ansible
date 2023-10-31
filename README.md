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
* and much more...

# Testing
I don't want to reinstall my OS every time I want to test something, so I created a docker container that simulates my OS and user.

I also created bash scripts to test that everything works as expected, so I don't have to do this boring stuff manually

```bash
docker build -t ansible-test . && docker run --rm -it ansible-test bash 
```

# Running

This is how I install and test everything

```bash
./run.sh
```
