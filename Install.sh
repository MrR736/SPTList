#!/bin/bash

SCRIPTS_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
echo "[https://github.com/MrR736]"

case "$1" in
    gm)
        wget -q -O"$SCRIPTS_DIR/Downloads/Setup.zip" "https://github.com/MrR736/GodotManager/raw/refs/heads/main/Package/GodotManager.zip"
        GM_LATEST_VERSION=$(curl -s https://raw.githubusercontent.com/MrR736/GodotManager/refs/heads/main/Package/Releases)
        cat > "$SCRIPTS_DIR/InstallLists/$1" <<EOL
echo "GM_VERSION=$GM_LATEST_VERSION"
echo "GM_LATEST_VERSION=$(curl -s https://raw.githubusercontent.com/MrR736/GodotManager/refs/heads/main/Package/Releases)"
EOL
        ;;
esac
