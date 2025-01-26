#!/usr/bin/bash

echo "Setup script has started ..."
apt update && apt upgrade -y
apt install tree git curl vim zsh expect -y
echo "Setup script ha s completed the installation!"
toilet Complete!