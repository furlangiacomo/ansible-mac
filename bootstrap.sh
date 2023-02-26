#!/bin/zsh

if ! which brew >/dev/null; then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

if ! which ansible > /dev/null; then
    brew install ansible
    ansible-galaxy collection install community.general
fi

ansible-playbook playbook.yml -e work=false --ask-become-pass