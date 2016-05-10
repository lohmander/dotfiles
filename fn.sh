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

function del_merged {
  git branch --merged \
    | grep -v "\*" \
    | grep -v master \
    | grep -v develop \
    | grep -v development \
    | xargs -n 1 git branch -d
}
