#!/bin/bash

SCRIPTS_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
echo "[https://github.com/MrR736]"

case "$1" in
    gm)
        wget -q -O"$SCRIPTS_DIR/Downloads/Setup.zip" "https://github.com/MrR736/GodotManager/raw/refs/heads/main/Package/GodotManager.zip"
        rm -rf "$SCRIPTS_DIR/InstallLists/$1.list"
        cat > "$SCRIPTS_DIR/InstallLists/$1.list" <<EOL
COMMAND_NAME=$1
VERSION=$(curl -s https://raw.githubusercontent.com/MrR736/GodotManager/refs/heads/main/Package/Releases)
LATEST_VERSION=curl -s https://raw.githubusercontent.com/MrR736/GodotManager/refs/heads/main/Package/Releases
EOL
        ;;
    spt)
        wget -q -O"$SCRIPTS_DIR/Downloads/Setup.zip" "https://github.com/MrR736/ScriptPackageTool/raw/refs/heads/main/Package/ScriptPackageTool.zip"
        rm -rf "$SCRIPTS_DIR/InstallLists/$1.list"
        cat > "$SCRIPTS_DIR/InstallLists/$1.list" <<EOL
COMMAND_NAME=$1
VERSION=$(curl -s https://raw.githubusercontent.com/MrR736/ScriptPackageTool/refs/heads/main/Package/Releases)
LATEST_VERSION=curl -s https://raw.githubusercontent.com/MrR736/ScriptPackageTool/refs/heads/main/Package/Releases
EOL
        ;;
esac
