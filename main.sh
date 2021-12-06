#!/usr/bin/env bash

# Normally we wouldn't use a password.
ansible-playbook -i inventory/hosts.yml main.yml --user root --ask-pass