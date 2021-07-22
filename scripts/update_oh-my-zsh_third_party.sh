#!/bin/bash

# Make chezmoi create plugins and themes folders
mkdir -p ${HOME}/.oh-my-zsh/custom/plugins
mkdir -p ${HOME}/.oh-my-zsh/custom/themes

# update oh-my-zsh
rm -rf ${HOME}/.oh-my-zsh
git clone https://github.com/robbyrussell/oh-my-zsh ${HOME}/.oh-my-zsh

# update zsh-syntax-highlighting
rm -rf ${HOME}/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting ${HOME}/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting

# update zsh-autosuggestions
rm -rf ${HOME}/.oh-my-zsh/custom/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${HOME}/.oh-my-zsh/custom/plugins/zsh-autosuggestions

# update powerlevel10k
rm -rf ${HOME}/.oh-my-zsh/custom/themes/powerlevel10k
git clone https://github.com/romkatv/powerlevel10k ${HOME}/.oh-my-zsh/custom/themes/powerlevel10k