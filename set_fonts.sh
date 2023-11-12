#!/usr/bin/env bash

Color_Off='\033[0m'
BRed='\033[1;31m'    BGreen='\033[1;32m' BYellow='\033[1;33m'
BBlue='\033[1;34m'  BPurple='\033[1;35m' 

cd "$(dirname "$0")" || exit
DIR=$(pwd)
FONT_DIR="$HOME/.local/share/fonts"
CONFIG_DIR="$HOME/.config"

# Install Fonts
install_fonts() {
	echo;echo;
	
	echo -e "${BBlue}" "[Fonts]" "${Color_Off}"
	echo -e "${BPurple}" "[*] Unzipping fonts.zip..." "${Color_Off}"    
	# unzip -qu "$DIR"/fonts.zip -d "$DIR"
	if [[ -d "$FONT_DIR" ]]; then
		cp -rf "$DIR"/fonts/* "$FONT_DIR"
	else
		mkdir -p "$FONT_DIR"
		cp -rf "$DIR"/fonts/* "$FONT_DIR"
	fi
	echo -e "${BYellow}" "[*] Updating font cache..." "${Color_Off}"
	fc-cache -f
}


install_fonts

echo;echo;
