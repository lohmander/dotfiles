#!/bin/bash

# Install git
brew install git

# Install Oh my zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

rm ~/.zshrc
ln -s ~/.dotfiles/.zshrc ~/.zshrc

# Install languages/platforms
brew install nodejs
brew install golang

echo "Done."
