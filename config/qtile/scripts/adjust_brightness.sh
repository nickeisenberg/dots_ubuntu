#!/bin/bash

# Combined script to adjust brightness

# to get this to work with no sudo password, add
# `nicholas ALL=(ALL) NOPASSWD: /usr/bin/light` into the file
# /etc/sudoers.d/sudo_no_password

adjust_brightness(){
    case $1 in
        up)
            sudo light -A 2
            ;;
        down)
            sudo light -U 2
            ;;
        *)
            echo "Usage: $0 {up|down}"
            exit 1
    esac
}

# Check if an argument is provided
if [ $# -eq 0 ]; then
    echo "No arguments provided. Please use 'up' to increase or 'down' to decrease brightness."
    exit 1
fi

adjust_brightness $1

