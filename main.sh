#!/usr/bin/env bash
ansible-playbook -i inventory/hosts.yml main.yml --private-key=~/m1.pem --user ubuntu