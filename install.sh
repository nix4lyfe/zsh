#!/bin/bash
cd $HOME/zsh
printf "%s " "Would you like to delete newhostname? <y/N>"
read prompt
if [[ "$prompt" == "y" || "$prompt" == "Y" || "$prompt" == "yes" || "$prompt" == "Yes" || "$prompt" == "YES" ]];
then
rm scripts/newhostname
fi
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
chsh -s /bin/zsh
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.2/install.sh | bash
./node-install.sh
\. "$HOME/.nvm/nvm.sh"
nvm install 22
mkdir -p ~/.vim ~/.vim/autoload ~/.vim/backup ~/.vim/colors ~/.vim/plugged
curl -fLo $HOME/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
printf "%s " "Would you like to delete the downloaded zhs folder? <y/N>"
read prompt
if [[ "$prompt" == "y" || "$prompt" == "Y" || "$prompt" == "yes" || "$prompt" == "Yes" || "$prompt" == "YES" ]];
then
rm -rf zsh
fi
