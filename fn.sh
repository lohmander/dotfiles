#!/bin/bash

function dev {
  if [ "$1" = "cd" ]; then
    cd $HOME/Developer && $argv;
  else
    (cd $HOME/Developer && $argv)
  fi
}

function clone {
  (cd $HOME/Developer/$1 && git clone $2)
}

function dmenv {
    eval "$(dm env default)"
}
