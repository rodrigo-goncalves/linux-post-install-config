#/bin/bash


apt update

setup_pipx() {
    sudo apt install pipx -y
    pipx ensurepath
}

setup_pipx

pipx install --include-deps ansible

git clone https://github.com/rodrigo-goncalves/linux-post-install-config.git

cd linux-post-install-config

ansible-playbook --connection=local 127.0.0.1, playbook.yml

CURR=$(date +"%Y-%m-%dT%H:%M:%S%z")

sudo echo "${CURR}" >/etc/birth_certificate
