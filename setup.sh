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
  ln -s ~/.dotfiles/.vimrc ~/.vimrc
  ln -s ~/.dotfiles/.vim ~/.vim

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

function install_macvim {
  echo -n "=> Installing MacVim..."

  if [ ! -d "/Applications/MacVim.app" ]; then
    {
      rm -rf ~/Downloads/MacVim.dmg
      wget https://github.com/macvim-dev/macvim/releases/download/snapshot-102/MacVim.dmg -P ~/Downloads/
      hdiutil attach ~/Downloads/MacVim.dmg
      sudo cp -r /Volumes/MacVim/MacVim.app /Applications/MacVim.app
      sudo cp /Volumes/MacVim/mvim /usr/local/bin/mvim
    } &> /dev/null
    echo -e "\t\tDone."
  else
    echo -e "\t\tSkipped."
  fi
}

function install_ycm {
  echo -e "=> Installing YouCompleteMe...\n\n"
  start_dir=$(pwd)

  cd ~/.dotfiles/.vim/bundle/YouCompleteMe

  git submodule update --init --recursive
  ./install.py --gocode-completer

  cd $start_dir
 
  echo -e "\n=> Done installing YouCompleteMe."
}

function setup_gitignore {
  echo -n "=> Setting up .gitignore..."
  
  echo -e ".DSStore\n*.swp" > ~/.gitignore

  git config --global core.excludesfile '~/.gitignore'
  
  echo -e "\tDone."
}

sudo echo ""

install_git
install_omz
install_nodejs
install_go
install_macvim
install_ycm
setup_gitignore
create_symlinks

echo -e "\nAll done!"
