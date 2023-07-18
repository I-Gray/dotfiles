#!/bin/sh

# This script installs all the programs I want for a fresh MacOS install.

echo "installing Homebrew..."
if test !$(which brew); then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
fi

echo "homebew update..."
brew update
brew tap ethereum/ethereum

echo "installing homebrew tools..."
brew install git
brew install git-extras
brew install git-flow
brew install grep
brew install go
brew install jq
brew install npm
brew install postgresql
brew install python
brew install python3
brew install pyenv
brew install vim

echo "installing homebrew apps..."
brew install --cask alfred
brew install --cask anki
brew install --cask brave-browser
brew install --cask chromium
brew install --cask docker
brew install --cask dropbox
brew install --cask fig
brew install --cask firefox
brew install --cask fork
brew install --cask google-chrome
brew install --cask google-drive
brew install --cask insomnia
brew install --cask iterm2
brew install --cask nordpass
brew install --cask notion
brew install --cask obsidian
brew install --cask postman
brew install --cask rectangle
brew install --cask slack
brew install --cask spotify
brew install --cask sublime-text
brew install --cask visual-studio-code
brew install --cask pycharm-ce

echo "homebrew cleanup..."
brew cleanup

echo "brew.sh script complete"
