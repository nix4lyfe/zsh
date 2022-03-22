!#/bin/bash
rm scripts/cputemp scripts/newhostname
sed -i '/alias laptopmode="$HOME/scripts/laptopmode.sh"/d' scripts/aliases
sed -i '/alias cputemp="$HOME/scripts/cputemp.sh"/d' scripts/aliases
cp -R ./{scripts,.zshrc,.zhistory,.config,.local} ~$HOME/
cd $HOME
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
rm -rf zsh
