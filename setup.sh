#!/bin/sh

echo "Defining symlinks..."
ln -sv "$PWD/.gitconfig" ~/.gitconfig > /dev/null 2>&1
ln -sv "$PWD/.antigenrc" ~/.antigenrc > /dev/null 2>&1
ln -sv "$PWD/.gitconfig" ~/.gitconfig > /dev/null 2>&1
ln -sv "$PWD/.p10k.zsh" ~/.p10k.zsh > /dev/null 2>&1
ln -sv "$PWD/.zshrc" ~/.zshrc > /dev/null 2>&1
ln -sv "$PWD/.zshrc_hooks" ~/.zshrc_hooks > /dev/null 2>&1
ln -sv "$PWD/.tmux.conf" ~/.tmux.conf > /dev/null 2>&1

echo "Setup completed."
