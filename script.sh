#!/bin/bash -e

lxc launch images:debian/jessie/amd64 <nom du conteneur>
lxc exec <nom du conteneur> -- apt update
lxc exec <nom du conteneur> -- apt -y upgrade
lxc exec <nom du conteneur> -- apt -y install openssh-server
lxc exec <nom du conteneur> -- adduser $USER
