# ansible-mac

**ansible-mac** is an Ansible playbook that automates the setup and configuration of macOS. This playbook can be used to quickly configure a new Mac with all the necessary software and configurations needed.

## Features

- Installs Homebrew
- Installs a list of commonly used applications, check playbook.yml for the entire list
- Configures ZSH shell with Oh My Zsh
- Configure dock

## Requirements

- [Dockutil](https://github.com/kcrawford/dockutil/releases/tag/3.0.2)

## Usage

clone the repository, and run:

`cd bin && ./bootstrap`
