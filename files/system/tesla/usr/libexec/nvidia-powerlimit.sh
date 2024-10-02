#!/usr/bin/env bash

# this is only for an nvidia tesla m40

set -e  # Exit immediately if a command exits with a non-zero status

nvidia-smi -pm 1                # Enable persistence mode
nvidia-smi -i 0 -pl 180         # Set power limit to 180W
nvidia-smi -i 0 -ac 3604,1202  # Set memory clock to 3000 MHz and GPU clock to 1200 MHz
#nvidia-smi -lgc 210,1202       # Set GPU clock and memory clock
nvidia-smi -i 0                 # Verify settings
