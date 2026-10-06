#!/usr/bin/env bash
set -e

chmod +x squidservers.AppImage
./squidservers.AppImage --appimage-extract > /dev/null
rm -f squidservers.AppImage
mv squashfs-root/* ./
rm -rf squashfs-root
