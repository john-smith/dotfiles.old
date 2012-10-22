#/bin/sh
rm -rf ~/.emacs
rm -rf ~/.emacs.el
rm -rf ~/.emacs.d/init.el
rm -rf ~/.bashrc
rm -rf ~/.bash_profile
rm -rf ~/.screenrc
rm -rf ~/.screen
rm -rf ~/.eshell/alias
rm -rf ~/.gitconfig

if [ ! -d ~/.emacs.d ]; then
	mkdir ~/.emacs.d
fi

if [ ! -d ~/.eshell ]; then
	mkdir ~/.eshell
fi

mkdir ~/.screen
chmod 700 ~/.screen

ln -s ~/dotfiles/emacs/init.el ~/.emacs.d/init.el
ln -s ~/dotfiles/bash/bashrc.sh ~/.bashrc
ln -s ~/dotfiles/bash/bash_profile.sh ~/.bash_profile
ln -s ~/dotfiles/screen/screenrc ~/.screenrc
ln -s ~/dotfiles/emacs/eshell/alias ~/.eshell/alias
ln -s ~/dotfiles/git/gitconfig ~/.gitconfig

sh ~/.bash_profile

