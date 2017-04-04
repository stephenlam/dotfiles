#!/usr/bin/env bash


# Get current dir
export DOTFILES_DIR
DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"


# Create symlinks
ln -sfv "$DOTFILES_DIR/nixpkgs" ~/.config/nixpkgs
ln -sfv "$DOTFILES_DIR/zsh/.zshrc" ~
ln -sfv "$DOTFILES_DIR/vim/.vimrc" ~
ln -sfv "$DOTFILES_DIR/git/.gitconfig" ~
ln -sfv "$DOTFILES_DIR/xmonad/" ~/.xmonad

mkdir -p ~/.config
ln -sfv "$DOTFILES_DIR/konsole/konsolerc" ~/.config/konsolerc

mkdir -p ~/.local/share/konsole
ln -sfv "$DOTFILES_DIR/konsole/base16-ateliercave-light.colorscheme" ~/.local/share/konsole/base16-ateliercave-light.colorscheme
ln -sfv "$DOTFILES_DIR/konsole/CodingCave.profile" ~/.local/share/konsole/CodingCave.profile
