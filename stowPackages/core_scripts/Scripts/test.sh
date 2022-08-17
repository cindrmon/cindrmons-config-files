#!/bin/sh

install_gum_for_debian():
	echo 'deb [trusted=yes] https://repo.charm.sh/apt/ /' | sudo tee /etc/apt/sources.list.d/charm.list
	sudo apt update && sudo apt install gum

install_gum_for_archlinux():
	if [ ! -x /usr/bin/yay ] ; then
		echo "Please install yay first."
	else
		yay -Sy gum-bin
	fi

install_gum_for_fedora():
	echo '[charm]
	name=Charm
	baseurl=https://repo.charm.sh/yum/
	enabled=1
	gpgcheck=0' | sudo tee /etc/yum.repos.d/charm.repo
	sudo yum install gum

install_gum_for_macos():
	if [ ! -x /opt/homebrew/bin/brew ] ; then
		echo "Please install homebrew first."
	else
		brew install gum
	fi


if [ ! -x /usr/bin/gum ] ; then
	echo "Gum is not installed.."
	if [[ "$OSTYPE" == "linux-gnu"* ]] ; then
		local DISTRIB=$(awk -F= '/^NAME/{print $2}' /etc/os-release)
		if [[ ${DISTRIB} = "Ubuntu"* ]] ; then
			install_gum_for_debian
		elif [[ ${DISTRIB} = "Debian"* ]] ; then
			install_gum_for_debian
		fi
	elif [[ "$OSTYPE" == "darwin"* ]]; then
		install_gum_for_macos
	else
		echo "You're using windows. Fuck you."
	fi
	
else
	gum  style \
	--foreground 212 --border-foreground 212 --border double \
	--align center --width 50 --margin "1 2" --padding "2 4" \
	'Gum is installed!'
fi
