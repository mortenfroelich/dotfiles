#!/bin/bash
VUNDLEDIR=~/.vim/bundle/Vundle.vim
if [ ! -d "$VUNDLEDIR" ]; then
    git clone https://github.com/VundleVim/Vundle.vim.git "$VUNDLEDIR"
    vim +PluginInstall +qall
fi
