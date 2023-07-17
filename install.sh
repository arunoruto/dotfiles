#!/usr/bin/bash

# Install tpm for tmux
mkdir -p $HOME/.config/tmux/plugins
git clone https://github.com/tmux-plugins/tpm $HOME/.tmux/plugins/tpm
ln -s $PWD/tmux/tmux.conf $HOME/.config/tmux/tmux.conf

# Install nvchad
mkdir -p $HOME/.config/nvim
git clone https://github.com/NvChad/NvChad $HOME/.config/nvim --depth 1
ln -s $PWD/nvim/lua/custom $HOME/.config/nvim/lua/custom

# Install oh-my-zsh
mkdir -p $HOME/.config/zsh
git clone https://github.com/ohmyzsh/ohmyzsh.git $HOME/.config/zsh
ln -s $PWD/.zshrc $HOME/.zshrc