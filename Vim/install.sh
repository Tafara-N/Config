#!/usr/bin/env bash

# Installing latest version of Vim

# Updating and Upgrading - Installing software-properties-common and build-essential
sudo apt-get update && sudo apt-get upgrade -y
sudo apt-get install -y software-properties-common build-essential

# Uninstalling VIM - default version
sudo apt-get remove vim.tiny vim

# Installing VIM - latest stable version
sudo add-apt-repository ppa:jonathonf/vim
sudo apt update
sudo apt install -y vim
vim --version
