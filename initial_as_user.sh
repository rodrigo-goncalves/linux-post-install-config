#!/bin/bash


pipx install --include-deps ansible

ansible-playbook --connection=local 127.0.0.1, /tmp/linux-post-install-config/playbook.yml

CURR=$(date +"%Y-%m-%dT%H:%M:%S%z")

sudo echo "${CURR}" >/etc/birth_certificate
