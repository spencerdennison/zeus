#!/bin/bash

apt list --upgradeable
read -p 'Upgrade? ' -n 1 -r reply
echo
if [[ $reply =~ ^[Yy]$ ]] then;
    sudo apt update && sudo apt upgrade
else
    [[ "$0" = "$BASH_SOURCE" ]] && exit 1 || return 1
fi
