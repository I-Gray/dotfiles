#!/bin/sh

echo "running new mac setup script..."

echo "running brew.sh ..."
sh ./brew.sh

echo "running shell.sh ..."
sh ./shell.sh

echo "running dotfiles.sh ..."
sh ./dotfiles.sh

echo "new mac setup script complete!"
