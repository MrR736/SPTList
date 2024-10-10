#!/bin/bash

SCRIPTS_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
echo "[https://github.com/MrR736]"

case "$1" in
    gm)
        wget -q -O"$SCRIPTS_DIR/Downloads/Setup.zip" "https://github.com/MrR736/GodotManager/raw/refs/heads/main/Package/GodotManager.zip"
        ;;
esac
