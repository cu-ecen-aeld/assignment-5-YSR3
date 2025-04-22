#!/bin/bash
# Clean buildroot to prepare for a fresh build

set -e

cd buildroot
make distclean
chmod +x clean.sh
