#!/bin/bash

function install_git {
  echo -n "=> Installing git..."
  brew install git &> /dev/null
  echo -e "\t\tDone."
}

function install_omz {
  echo -n "=> Installing Oh My Zsh..."
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" &> /dev/null
  echo -e "\tDone."
}

function create_symlinks {
  echo -n "=> Creating symlinks..."

  rm ~/.zshrc
  rm -rf ~/.vim
  rm -rf ~/.vimrc

  ln -s ~/.dotfiles/.zshrc ~/.zshrc
  ln -s ~/.dotfiles/.nvim ~/.config/nvim

  echo -e "\t\tDone."
}

function install_nodejs {
  echo -n "=> Installing nodejs..."
  brew install nodejs &> /dev/null
  echo -e "\t\tDone."
}

function install_go {
  echo -n "=> Installing Go..."
  brew install golang &> /dev/null
  echo -e "\t\tDone."
}

function setup_gitignore {
  echo -n "=> Setting up .gitignore..."

  echo -e ".DSStore\n*.swp" > ~/.gitignore

  git config --global core.excludesfile '~/.gitignore'

  echo -e "\tDone."
}

function install_basics {
  echo -n "=> Installing wget..."

  brew install wget &> /dev/null

  echo -e "\t\tDone."
}

function install_font {
  echo -n "=> Installing Source Code Pro font..."

  {
    wget https://github.com/adobe-fonts/source-code-pro/archive/2.010R-ro/1.030R-it.tar.gz
    tar -zxvf 1.030R-it.tar.gz
    mv source-code-pro-2.010R-ro-1.030R-it/OTF/*.otf /Users/$(whoami)/Library/Fonts/
    rm -rf source-code-pro-2.010R-ro-1.030R-it
    rm -rf 1.030R-it.tar.gz
  } &> /dev/null

 echo -e "\tDone."
}

sudo echo ""

install_git
install_omz
install_nodejs
install_go
install_basics
install_font
setup_gitignore
create_symlinks

echo -e "\nAll done!"
