#!/bin/bash


# mkdir dribble folder
mkdir ~/0-windows-linux-shared

# general use tools
sudo dnf update -y
sudo dnf install dnf-plugins-core -y
sudo dnf install epel-release -y
sudo dnf install gcc make perl kernel-devel kernel-headers bzip2 dkms -y
sudo dnf update kernel-* -y


# commons config
sudo ln -s /usr/bin/python3 /usr/bin/python
sudo dnf config-manager --add-repo https://brave-browser-rpm-release.s3.brave.com/x86_64/
sudo rpm --import https://brave-browser-rpm-release.s3.brave.com/brave-core.asc


# commons tools
sudo dnf  install \
          ansible \
          git \
          git-extras \
          tmux \
          keepassxc \
          brave-browser \
          -y


reboot

