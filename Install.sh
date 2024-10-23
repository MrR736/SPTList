#!/bin/bash

SCRIPTS_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
echo "[https://github.com/MrR736]"

case "$1" in
    gm)
        wget -q -O"$SCRIPTS_DIR/Downloads/Setup.zip" https://github.com/MrR736/GodotManager/raw/refs/heads/main/Package/GodotManager.zip
        rm -rf "$SCRIPTS_DIR/Remove/$1"
        rm -rf "$SCRIPTS_DIR/InstallLists/$1.list"
        cat > "$SCRIPTS_DIR/InstallLists/$1.list" <<EOL
COMMAND_NAME=$1
VERSION=$(curl -s https://raw.githubusercontent.com/MrR736/GodotManager/refs/heads/main/Package/Releases)
LATEST_VERSION=curl -s https://raw.githubusercontent.com/MrR736/GodotManager/refs/heads/main/Package/Releases
EOL
        ;;
    rt)
        wget -q -O"$SCRIPTS_DIR/Downloads/Setup.zip" https://github.com/MrR736/RootTools/raw/refs/heads/main/Package/RootTools.zip
        rm -rf "$SCRIPTS_DIR/Remove/$1"
        rm -rf "$SCRIPTS_DIR/Remove/$1" "$SCRIPTS_DIR/InstallLists/$1.list"
        cat > "$SCRIPTS_DIR/InstallLists/$1.list" <<EOL
COMMAND_NAME=$1
VERSION=$(curl -s https://raw.githubusercontent.com/MrR736/RootTools/refs/heads/main/Package/Releases)
LATEST_VERSION=curl -s https://raw.githubusercontent.com/MrR736/RootTools/refs/heads/main/Package/Releases
EOL
        ;;
    *)
        echo -e "\e[31mE: Unable To Locate Package $1\e[0m"
        exit 1
        ;;
esac
