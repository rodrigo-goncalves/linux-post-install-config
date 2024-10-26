#/bin/bash


setup_pipx() {
    apt update
    apt install pipx
    pipx ensurepath
    pipx ensurepath --global
}

setup_ansible() {
    sudo su - ansible

    [ "$USER" == 'ansible' ] && echo '' || exit 1

    pipx install --include-deps ansible
}

setup_pipx
setup_ansible

CURR=$(date +"%Y-%m-%dT%H:%M:%S%z")

echo "${CURR}" >/etc/birth_certificate
