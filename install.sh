#!/bin/sh

SRC_DIR=`dirname $0`

if [ ! -d "$HOME/.config" ]; then
  mkdir "$HOME/.config"
fi

ln -sf $SRC_DIR/.zshrc $HOME/.zshrc
ln -sf $SRC_DIR/.config/nvim/init.vim $HOME/.config/nvim/init.vim
ln -sf $SRC_DIR/.config/tmux/tmux.conf $HOME/.config/tmux/tmux.confg

