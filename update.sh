#!/bin/bash

if [[ $(apt list --upgradeable | wc -l) -gt 1 ]]; then
	echo 'Upgradeable packages found...continuing'
	apt list --upgradeable
else
	echo 'No upgradeable packages...exiting'
	[[ "$0" = "$BASH_SOURCE" ]] && exit 1 || return 1
fi

read -p 'Upgrade? ' -n 1 -r reply

echo

if [[ $reply =~ ^[Yy]$ ]]; then
	sudo apt update && sudo apt upgrade
else
	[[ "$0" = "$BASH_SOURCE" ]] && exit 1 || return 1
fi
