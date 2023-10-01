#!/bin/bash

# Checking if ansible is installed. If it is not installed, then it will attempt to install using DNF.

target=ansible

if [ -x $target ]; then
    echo "$target is installed"
else
    echo "$target could not be found"

    sudo dnf install -y ansible
fi

cd bootstrapping

sudo ansible-playbook -i inventory.yml bootstrap.yml
