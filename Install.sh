#!/bin/bash

case "$1" in
    gm)
        wget -q -O"/usr/scripts/ScriptPackageTool/Downloads/GodotManager.zip" "https://github.com/MrR736/GodotManager/raw/refs/heads/main/Package/GodotManager.zip"
        ;;
    *)
        echo "E: Unable to locate package $1"
        ;;
esac
