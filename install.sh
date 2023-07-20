#!/usr/bin/bash

# setup git config
ln -s $PWD/.gitconfig $HOME/.gitconfig

# Configure alacritty and the catppuccin theme
mkdir -p $HOME/.config/alacritty
git clone https://github.com/catppuccin/alacritty.git ~/.config/alacritty/catppuccin
ln -s $PWD/alacritty/alacritty.yml ~/.config/alacritty/alacritty.yml

# Install tpm for tmux
mkdir -p $HOME/.config/tmux/plugins
git clone https://github.com/tmux-plugins/tpm $HOME/.config/tmux/plugins/tpm
ln -s $PWD/tmux/tmux.conf $HOME/.config/tmux/tmux.conf

# Install nvchad
mkdir -p $HOME/.config/nvim
git clone https://github.com/NvChad/NvChad $HOME/.config/nvim --depth 1
ln -s $PWD/nvim/lua/custom $HOME/.config/nvim/lua/custom

# Install oh-my-zsh
git clone https://github.com/ohmyzsh/ohmyzsh.git $HOME/.config/zsh
mv ~/.zshrc ~/.zshrc.bak
ln -s $PWD/home/.zshrc $HOME/.zshrc

# Link starship config gile
ln -s $PWD/config/starship.toml $HOME/.config/starship.toml

## Install zsh plugins
ZSH_CUSTOM=$HOME/.config/zsh/custom
mkdir -p $ZSH_CUSTOM
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-history-substring-search ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-history-substring-search
git clone https://github.com/zsh-users/zsh-syntax-highlighting ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
