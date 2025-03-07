#!/usr/bin/env bash

# Ensure the script runs with root privileges
if [[ $EUID -ne 0 ]]; then
    echo "Please run as root: sudo $0"
    exit 1
fi

# Define the list of packages
packages=(git cmake make stow rust-analyzer tmux kitty starship zsh)

# Install packages using pacman (modify if using another package manager)
echo "Installing packages..."
sudo pacman -S --noconfirm "${packages[@]}"

echo "Installing neovim v0.10.4 ..."
git clone --branch v0.10.4 --depth=1 https://github.com/neovim/neovim.git
cd neovim
make CMAKE_BUILD_TYPE=Release
sudo make install

cd $HOME

git clone https://github.com/tmux-plugins/tpm $HOME/.tmux/plugins/tpm

# Clone dotfiles repository
cd $HOME
echo "Cloning dotfiles form main branch..."
git clone --depth=1 -b main https://github.com/SantoshShrestha11/dotfiles.git $HOME/dotfiles/
# Stow the dotfiles
cd $HOME/dotfiles || exit
echo "Stowing dotfiles..."
stow nvim zsh tmux kitty starship

echo "Setup complete!"
