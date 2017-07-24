# dotfiles

## Switch to zsh

```
$ chsh -s $(which zsh)
```

## Setup Oh My Zsh

```
$ sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

## Config

```
$ cd ~
$ mkdir .config
$ ln -s .dotfiles/.nvim .config/nvim
$ rm .zshrc
$ ln -s .dotfiles/.zshrc .zshrc
```

## Dependencies dependencies dependencies

So this is still incomplete, and you'll probably notice some missing dependencies
if you run my setup as is. Will improve this documentation over time.

### Homebrew

```
$ brew install wget git golang nodejs python3 neovim
```

### NPM

```
$ npm install -g flow-bin elm tern
```

### Go

```
$ go get -u -v github.com/nsf/gocode
```

### Vim

```
:PlugInstall
:GoInstallBinaries
```
