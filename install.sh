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

# Install 1Password CLI and get 1Password JWT
sudo sh -c 'curl https://cache.agilebits.com/dist/1P/op/pkg/v1.12.3/op_linux_amd64_v1.12.3.zip -o /tmp/op.zip \
    && unzip /tmp/op.zip -x op.sig -d /usr/local/bin \
    && rm /tmp/op.zip \
    && chmod 755 /usr/local/bin'
eval $(op signin)

# Run Ansible playbook
ansible-playbook main.yaml --ask-become-pass
