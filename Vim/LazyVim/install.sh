#!/usr/bin/bash

# Downloading and Installing Neovim
wget "https://github.com/neovim/neovim/releases/download/v0.10.1/nvim-linux64.tar.gz"
sudo mv nvim-linux64.tar.gz /usr/local/bin
cd /usr/local/bin || exit
sudo tar xzvf nvim-linux64.tar.gz

# Remove nvim-linux64.tar.gz, because we have the nvim-linux64 file
sudo rm nvim-linux64.tar.gz

# Create a symbolic link
sudo ln -s ./nvim-linux64/bin/nvim ./nvim

# Back up current Neovim

# (# required)
mv ~/.config/nvim{,.bak}

# (# optional but recommended)
mv ~/.local/share/nvim{,.bak}
mv ~/.local/state/nvim{,.bak}
mv ~/.cache/nvim{,.bak}

# Now clone the LazyVim starter repo
git clone https://github.com/LazyVim/starter ~/.config/nvim

# Remove the .git folder, so you can add it to your own repo later
rm -rf ~/.config/nvim/.git

# Check if the installation was successful
nvim --version
