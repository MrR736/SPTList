#!/bin/bash

case "$1" in
    gm)
        echo "Downloads"
        ;;
    *)
        echo "E: Unable to locate package $1"
        ;;
esac
