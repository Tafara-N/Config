# LazyVim

## Table of Content
- [Author](#author)
- [Installation](#installation)
- [Configurations](#configuration-files)

## Installation

- [LazyVim: Official](https://www.lazyvim.org/)
- [LazyVim: GitHub](https://github.com/LazyVim/LazyVim)

**Download `nvim-linux64.tar.gz` from [Neovim: GitHub](https://github.com/neovim/neovim/releases)**

```bash
wget "https://github.com/neovim/neovim/releases/download/v0.10.1/nvim-linux64.tar.gz"
sudo mv nvim-linux64.tar.gz /usr/local/bin
```

```shell
cd /usr/local/bin
```

```shell
sudo tar xzvf nvim-linux64.tar.gz
```

**Remove nvim-linux64.tar.gz, because we have the nvim-linux64 file**

```bash
rm nvim-linux64.tar.gz
```

### Create a symbolic link

```shell
sudo ln -s ./nvim-linux64/bin/nvim ./nvim
```

### Installing LazyVim

### Back up current Neovim

### Step 1

```shell
(# required)
mv ~/.config/nvim{,.bak}

(# optional but recommended)
mv ~/.local/share/nvim{,.bak}
mv ~/.local/state/nvim{,.bak}
mv ~/.cache/nvim{,.bak}
```

### Step 2

```shell
git clone https://github.com/LazyVim/starter ~/.config/nvim
```

### Step 3: Remove the .git folder, so you can add it to your own repo later

```shell
rm -rf ~/.config/nvim/.git
```

> For `LazyVim` [installation](install.sh)

## Configuration Files

**For Basic LazyVim Setup**

[Basic Config](nvim/)

```bash
nvim/
├── init.lua
├── lua
│   ├── config
│   │   ├── autocmds.lua
│   │   ├── keymaps.lua
│   │   ├── lazy.lua
│   │   └── options.lua
│   └── plugins
│       ├── edgy.lua
│       ├── editorconfig.lua
│       ├── example.lua
│       ├── twilight.lua
│       └── ui.lua
├── .neoconf.json
├── README.md
└── stylua.toml
```

## Author

**Tafara Nyamhunga  - [Github](https://github.com/tafara-n) / [Twitter](https://twitter.com/tafaranyamhunga)**
