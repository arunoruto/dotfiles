#!/usr/bin/bash

# setup git config
ln -s $PWD/.gitconfig $HOME/.gitconfig

# Install tpm for tmux
mkdir -p $HOME/.config/tmux/plugins
git clone https://github.com/tmux-plugins/tpm $HOME/.config/ tmux/plugins/tpm
ln -s $PWD/tmux/tmux.conf $HOME/.config/tmux/tmux.conf

# Install nvchad
mkdir -p $HOME/.config/nvim
git clone https://github.com/NvChad/NvChad $HOME/.config/nvim --depth 1
ln -s $PWD/nvim/lua/custom $HOME/.config/nvim/lua/custom

# Install oh-my-zsh
git clone https://github.com/ohmyzsh/ohmyzsh.git $HOME/.config/zsh
mv ~/.zshrc ~/.zshrc.bak
ln -s $PWD/.zshrc $HOME/.zshrc

## Install zsh plugins
ZSH_CUSTOM=$HOME/.config/zsh/custom
mkdir -p $ZSH_CUSTOM
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-history-substring-search ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-history-substring-search
git clone https://github.com/zsh-users/zsh-syntax-highlighting ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting