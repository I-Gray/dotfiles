#!/bin/sh

echo "fetching dot files from Github"
cd ~
git clone git@github.com:I-Gray/dotfiles.git dotfiles
cd dotfiles

echo "over-writing .vimrc file..."
cp .vimrc ~/.vimrc

echo "over-writing .zshrc file..."
cp .zshrc ~/.zshrc

echo "Dot file extraction complete"

