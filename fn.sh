#!/bin/bash

function dev {
  if [ "$1" = "cd" ]; then
    cd $HOME/Developer && $argv;
  else
    (cd $HOME/Developer && $argv)
  fi
}

function git {
  /usr/local/bin/git $argv;
}
