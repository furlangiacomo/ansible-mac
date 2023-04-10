# ansible-mac

**ansible-mac** is an ansible playbook that automates the setup and configuration of macOS. This playbook can be used to quickly configure a new Mac with all the necessary software and configurations needed.

## Features

- Check if Homebrew is installed, if not it will be installed
- Installs a list of commonly used applications, check vars/default.yml or vars/work.yml for the entire list depending where you want to run it
- Configures ZSH shell with Oh My Zsh
- Download VSCode themes and extensions
- Configure dock

## Usage

- clone the repository: `gh repo clone furlangiacomo/ansible-mac`

- move into repository: `cd ansible-mac`

- if you don't need to change anything in the vars files you can run `make default` or `make work` depending in which mac you are running it.
