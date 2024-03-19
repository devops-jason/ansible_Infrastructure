#!/usr/bin/env zsh

if [ ! -d "~/.ansible/roles" ]; then
    mkdir -p ~/.ansible/roles
fi

ansible-galaxy install --force-with-deps -r requirements.yml