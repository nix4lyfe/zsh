!#/bin/bash
rm scripts/cputemp scripts/newhostname
sed -i '/alias laptopmode="$HOME/scripts/laptopmode.sh"/d' scripts/aliases
sed -i '/alias cputemp="$HOME/scripts/cputemp.sh"/d'
cp -R ./{scripts,.zshrc,.zhistory} ~$HOME/
cd $HOME
rm -rf zsh
