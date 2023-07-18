#!/bin/sh

echo "installing Oh-My-ZSH..."
curl -L http://install.ohmyz.sh | sh

echo "zsh plugin setup..."
cd ~/.oh-my-zsh/custom/plugins
git clone git://github.com/zsh-users/zsh-syntax-highlighting.git

echo "set ZSH as shell..."
chsh -s /bin/zsh

echo "fetching dot files from Github"
cd ~
git clone git@github.com:I-Gray/dotfiles.git dotfiles
cd dotfiles

echo "over-writing .vimrc file..."
cp .vimrc ~/.vimrc

echo "over-writing .zshrc file..."
cp .zshrc ~/.zshrc

echo "Dot file extraction complete"

