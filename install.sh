#!/bin/bash

# Install Ansible and pip
sudo sh -c 'apt update \
    && sudo apt install software-properties-common \
    && sudo add-apt-repository --yes --update ppa:ansible/ansible \
    && sudo apt install ansible python3-pip --yes \
    && sudo apt autoremove --yes'

# Install psutil required by Ansible dconf module
sudo pip3 install psutil

# Install Ansible requirements
ansible-galaxy install -r requirements.yaml

# Run Ansible playbook
ansible-playbook main.yaml --ask-become-pass
