#!/usr/bin/env bash

# Tell this script to exit if there are any errors.
# You should have this in every custom script, to ensure that your completed
# builds actually ran successfully without any errors!
set -oue pipefail

# Your code goes here.
git clone https://github.com/catsout/wallpaper-engine-kde-plugin.git --depth 1 --branch main /tmp/wallpaper-engine-kde-plugin && \
kpackagetool6 --type=Plasma/Wallpaper --global --install /tmp/wallpaper-engine-kde-plugin/plugin && \
rm -rf /tmp/wallpaper-engine-kde-plugin
