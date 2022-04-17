#!/bin/bash
cd $HOME/zsh
rm scripts/newhostname
printf "%s " "Would you like to delete cputemp? Note this only works on RaspberryPi <y/N>"
read prompt
if [[ "$prompt" == "y" || "$prompt" == "Y" || "$prompt" == "yes" || "$prompt" == "Yes" || "$prompt" == "YES" ]];
then
rm scripts/cputemp
sed -i'' -e '/alias cputemp="$HOME\/scripts\/cputemp.sh"/d' scripts/aliases
fi
printf "%s " "Would you like to delete laptopmode? <y/N>"
read prompt
if [[ "$prompt" == "y" || "$prompt" == "Y" || "$prompt" == "yes" || "$prompt" == "Yes" || "$prompt" == "YES" ]];
then
rm scripts/laptopmode
sed -i'' -e '/alias laptopmode="$HOME\/scripts\/laptopmode.sh"/d' scripts/aliases
fi
cp -R ./{scripts,.zshrc,.zhistory,.config,.local} $HOME/
cd $HOME/
curl -fLo $HOME/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
rm -rf zsh
