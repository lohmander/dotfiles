#!/bin/bash
# alias.sh

# Docker
alias dm="docker-machine"
alias dmenv="eval \"$(dm env default)\""

# git
alias git='/usr/local/bin/git'

git config --global alias.s status
git config --global alias.a 'add -A'
git config --global alias.cm 'commit -m'
