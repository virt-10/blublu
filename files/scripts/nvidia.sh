#!/usr/bin/env bash

# Tell this script to exit if there are any errors.
# You should have this in every custom script, to ensure that your completed
# builds actually ran successfully without any errors!
set -oue pipefail

# Your code goes here.
curl -Lo /tmp/nvidia-install.sh https://raw.githubusercontent.com/ublue-os/hwe/main/nvidia-install.sh && \
chmod +x /tmp/nvidia-install.sh && \
IMAGE_NAME=base-main FEDORA_MAJOR_VERSION="$(rpm -E %fedora)" /tmp/nvidia-install.sh && \
rm -f /usr/share/vulkan/icd.d/nouveau_icd.*.json && \
ln -s libnvidia-ml.so.1 /usr/lib64/libnvidia-ml.so