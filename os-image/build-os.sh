#!/bin/bash

echo "Portions of the build process require elevation. Please enter a \`sudoer\`'s password if prompted"

# Install pi-gen's dependencies
sudo apt-get -y install coreutils quilt parted qemu-user-static debootstrap zerofree \
     zip dosfstools libarchive-tools libcap2-bin grep rsync xz-utils file git curl bc

# Update git submodule if it hasn't been done already
git submodule update --init --recursive

