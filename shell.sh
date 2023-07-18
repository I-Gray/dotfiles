#!/bin/sh

# This script sets up GH SSH keys, Oh-My-ZSH & Dot Files

echo "____ Mac Setup Script ____"
echo "Git user info"
read -p "Enter Name: " full_name
read -p "Enter Email: " email

echo "creating SSH key..."
ssh-keygen -t rsa

echo "public key created ..."
echo "adding public key to ssh-agent..."

eval "$(ssh-agent -s)"

f="Host *
  AddKeysToAgent yes
  UseKeychain yes
  IdentityFile ~/.ssh/id_rsa"

echo "$f" >> ~/.ssh/config

ssh-add -K ~/.ssh/id_rsa

cat ~/.ssh/id_rsa.pub | pbcopy

echo "SSH public key has been copied to clipboard"
echo "Paste this public key into Github settings"

open https://github.com/settings/keys

read -p "Add the public key to GH then press [Enter] to continue..."
echo "Install Xcode Dev Tools..."
xcode-select --install

read -p "Hit [Enter] to contine once Xcode Tools completes..."
sudo xcodebuild -license
echo "Setting up git config..."

git config --global user.name $full_name
git config --global user.email $email
git config --global init.defaultBranch master

echo "installing Oh-My-ZSH..."
curl -L http://install.ohmyz.sh | sh

echo "zsh plugin setup..."
cd ~/.oh-my-zsh/custom/plugins
git clone git://github.com/zsh-users/zsh-syntax-highlighting.git

echo "set ZSH as shell..."
chsh -s /bin/zsh

echo "Copying dotfiles from Github"
cd ~
git clone git@github.com:I-Gray/dotfiles.git .dotfiles
cd .dotfiles

echo "shell.sh script complete"
