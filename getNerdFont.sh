#!/bin/bash

#This script downloads and extracts the JetBrainsMono nerd font into the users ~/.local/share/fonts/ directory. Relogging should have the font be properly used for editor purposes. In WSL, you'll need to choose the font from the terminal emulator instead.

xDir=`pwd`

cd $HOME/Downloads
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.1/JetBrainsMono.zip

outDir=$HOME/.local/share/fonts

if [ ! -d outDir ]; then
  mkdir $outDir
fi

unzip JetBrainsMono.zip -d $outDir 

cd $xDir
