#!/bin/bash

set -e

source /etc/os-release

arch_install() {
	sudo pacman -S --noconfirm --needed gcc make git ripgrep fd unzip neovim
}

ubuntu_install() {
	sudo add-apt-repository ppa:neovim-ppa/unstable -y
	sudo apt update
	sudo apt install make gcc ripgrep unzip git xclip neovim

}

case "$ID" in
	arch) arch_install ;;
	ubuntu) ubuntu_install ;;
	*) 
		echo "No script for distribution '${ID}'" 1>&2
		exit 1
		;;
esac


