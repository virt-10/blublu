#!/usr/bin/env bash

# Tell build process to exit if there are any errors.
set -oue pipefail

IMAGE_DATE=$(date +%Y%m%d.%H)
MAJOR_RELEASE_VERSION=$(grep -oP '[0-9]*' /etc/fedora-release)
sed -i "s,^PRETTY_NAME=.*,PRETTY_NAME=\"Blublu Linux ${MAJOR_RELEASE_VERSION}.${IMAGE_DATE}\"," /usr/lib/os-release
sed -i "s,^DEFAULT_HOSTNAME=.*,DEFAULT_HOSTNAME=\"blublu\"," /usr/lib/os-release