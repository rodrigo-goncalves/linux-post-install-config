#!/bin/bash


# This script is intended to be executed as a regular user with SUDO access.
# The script execution would be triggered by the root user for running any commands
#   that are supposed to run by a regular user

pipx install --include-deps ansible
pipx ensurepath

ansible-playbook --connection=local 127.0.0.1, /tmp/linux-post-install-config/playbook.yml

CURR=$(date +"%Y-%m-%dT%H:%M:%S%z")

sudo echo "${CURR}" >/etc/birth_certificate
