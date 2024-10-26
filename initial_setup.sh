#/bin/bash


apt update

setup_pipx() {
    apt install pipx -y
    pipx ensurepath
}

setup_pipx

git clone https://github.com/rodrigo-goncalves/linux-post-install-config.git /tmp/linux-post-install-config

chmod 755 /tmp/linux-post-install-config/initial_as_user.sh

chown -R ansible:ansible /tmp/linux-post-install-config

sudo -H -u ansible bash -c '/tmp/linux-post-install-config/initial_as_user.sh'

