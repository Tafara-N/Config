# My Ubuntu terminal configurations

# Start Here

```shell
sudo apt-get update && sudo apt-get upgrade -y
sudo apt-get install -y software-properties-common build-essential
```

### Uninstalling VIM

```shell
sudo apt-get remove vim.tiny vim
```

### Installing VIM - latest stable version

```shell
sudo add-apt-repository ppa:jonathonf/vim
sudo apt update
sudo apt install -y vim
vim --version
```

### Batcat command (cat)

```shell
sudo apt install -y bat
```

## Adding plugins

Plugin manager that lets us add/remove plugins Vundle

```shell
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

## For VIM setup, look into the Setup file
### Installing NVIM

1. Download `nvim-linux64.tar.gz` from (https://github.com/neovim/neovim/releases)

2. On WSL, move file from Windows to Linux destination (mv nvim-linux64.tar.gz /usr/local/bin)

```shell
cd /usr/local/bin
```

```shell
sudo tar xzvf nvim-linux64.tar.gz
```

5. Remove nvim-linux64.tar.gz, because we have the nvim-linux64 file

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

Step 2

```shell
git clone https://github.com/LazyVim/starter ~/.config/nvim
```

Step 3: Remove the .git folder, so you can add it to your own repo later

```shell
rm -rf ~/.config/nvim/.git
```

### Customizing nvim
### Navigate to:

### Linux:

.Config >> nvim >> lua >> config >> options.lua

## Windows:

AppData >> Local >> nvim >> lua >> config >> options.lua

# Databases
## Installing mySQL

```shell
sudo apt install mysql-server
```

## Check mysql status

```shell
sudo service mysql status
```

## Stop mysql

```shell
sudo service mysql stop
```

## Start mysql

```shell
sudo service mysql start
```

## To set password for root User

```shell
sudo mysql
```

```mysql
ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'password you want';
```

## Exit out of mysql

## Run the secure installation script

```shell
sudo mysql_secure_installation
```

### Enter the password you just set:

Press y (yes) on all the questions

### After all is done, if we try to login into mysql with root it won't work:

```shell
sudo mysql
ERROR 1045 (28000): Access denied for user 'root'@'localhost' (using password: NO)
```

### To fix this:

```shell
mysql -u root -p
```

### Enter your mysql password you set:

```mysql
ALTER USER 'root'@'localhost' IDENTIFIED WITH auth_socket;
```

### Exit out of mysql

## Install mycli for mySQL

```shell
pip3 install mycli
```

OR

```shell
sudo apt-get install -y mycli
```

# [Installing Postgre](https://www.digitalocean.com/community/tutorials/how-to-install-and-use-postgresql-on-ubuntu-20-04)

```shell
sudo apt install -y postgresql postgresql-contrib
```

## Start Postgre

```shell
sudo systemctl start postgresql.service
```

## Switch to Postgre

```shell
sudo -i -u postgres
psql
```

## Run directly

```shell
sudo -u postgres psql
```

## Install pgcli for Postgre

```shell
sudo apt-get -y install libpq-dev python-dev
pip3 install pgcli
```

OR

```shell
sudo apt-get install -y pgcli
```

# Installing Apache2

```shell
sudo apt update
sudo apt install -y apache2
```

# Installing Nginx

[Installing Nginx](https://docs.nginx.com/nginx/admin-guide/installing-nginx/installing-nginx-open-source/#installing-prebuilt-ubuntu-packages)

When:

```shell
sudo nginx

nginx: [emerg] bind() to 0.0.0.0:80 failed (98: Address already in use)

nginx: [emerg] bind() to 0.0.0.0:80 failed (98: Address already in use)

nginx: [emerg] bind() to 0.0.0.0:80 failed (98: Address already in use)

nginx: [emerg] bind() to 0.0.0.0:80 failed (98: Address already in use)

nginx: [emerg] bind() to 0.0.0.0:80 failed (98: Address already in use)

nginx: [emerg] still could not bind()
```

OR

```shell
sudo nginx
nginx: [emerg] bind() to 0.0.0.0:80 failed (98: Unknown error)
nginx: [emerg] bind() to [::]:80 failed (98: Unknown error)
nginx: [emerg] bind() to 0.0.0.0:80 failed (98: Unknown error)
nginx: [emerg] bind() to [::]:80 failed (98: Unknown error)
nginx: [emerg] bind() to 0.0.0.0:80 failed (98: Unknown error)
nginx: [emerg] bind() to [::]:80 failed (98: Unknown error)
nginx: [emerg] bind() to 0.0.0.0:80 failed (98: Unknown error)
nginx: [emerg] bind() to [::]:80 failed (98: Unknown error)
nginx: [emerg] bind() to 0.0.0.0:80 failed (98: Unknown error)
nginx: [emerg] bind() to [::]:80 failed (98: Unknown error)
nginx: [emerg] still could not bind()
```

> nginx is already running and can be stopped by:

```shell
sudo pkill -f nginx & wait $!
sudo systemctl start nginx
```

Or apache2 is listening on the same port and can be stopped:

```shell
sudo /etc/init.d/apache2 stop
```

# Virtual Environments

## Install and activate venv

To create a Python Virtual Environment, allowing you to install specific dependencies for this python project, we will install venv:

```shell
sudo pip3 install virtualenv
python3 -m venv env  # (name_of_venv)
source env/bin/activate
```

## Install MySQLdb module version 2.0.x

For installing `MySQLdb`, you need to have `MySQL` installed.

```shell
sudo apt-get install -y python3-dev
sudo apt-get install -y libmysqlclient-dev
sudo apt-get install -y zlib1g-dev
sudo pip3 install mysqlclient
...
python3
>>> import MySQLdb
>>> MySQLdb.version_info
(2, 0, 3, 'final', 0)
```

## Install SQLAlchemy module version 1.4.x

```shell
sudo pip3 install SQLAlchemy
...
python3
>>> import sqlalchemy
>>> sqlalchemy.__version__
'1.4.22'
```

Also, you can have this warning message:

```shell
/usr/local/lib/python3.4/dist-packages/sqlalchemy/engine/default.py:552: Warning: (1681, "'@@SESSION.GTID_EXECUTED' is deprecated and will be re
moved in a future release.")
  cursor.execute(statement, parameters)
```

You can ignore it.

--------------------------------------------------------------------------------------------------------------------

# LINTERS

# C

### Installing betty linter for .c files

```shell
mkdir Betty && cd Betty
```

```shell
git clone https://github.com/holbertonschool/Betty.git
```

```shell
cd Betty
```

```shell
sudo ./install.sh
```

Put this inside `betty` file

Or

```shell
echo '#!/bin/bash

# Simply a wrapper script to keep you from having to use betty-style
# and betty-doc separately on every item.
# Originally by Tim Britton (@wintermanc3r), multiargument added by
# Larry Madeo (@hillmonkey)

BIN_PATH="/usr/local/bin"
BETTY_STYLE="betty-style"
BETTY_DOC="betty-doc"

if [ "$#" = "0" ]; then
    echo "No arguments passed."
    exit 1
fi

for argument in "$@" ; do
    echo -e "\n========== $argument =========="
    ${BIN_PATH}/${BETTY_STYLE} "$argument"
    ${BIN_PATH}/${BETTY_DOC} "$argument"
done' > betty
```

```shell
chmod u+x betty
```

```shell
sudo mv betty /bin/
```

To check style:

```shell
betty filename.c
```

## GNU Indent Formatter

```shell
git clone https://git.savannah.gnu.org/git/indent.git
```

Usage:

```shell
indent <filename.c>
```

# CSS and HTML

### Installing W3C Validator for .css, .html files

## Linter for .html and .css files

## Requirements
- [Python 3](https://www.python.org/downloads/)
- [Requests: HTTP for Humans™](https://requests.readthedocs.io/en/latest/user/install/)

## Quickstart
1. Clone this repo

```shell
git clone https://github.com/holbertonschool/W3C-Validator.git
```

2. Run the validator command from within

Single file:

```shell
./w3c_validator.py index.html
./w3c_validator.py css/styles.css
```

Multiple files:

```shell
./w3c_validator.py index.html article.html css/styles.css
```

All errors are printed in `STDERR`; Exit status = # of errors (0 on success)

### Troubleshooting
- Error: bad interpreter: `No such file or directory` If you get this error you might not have Python installed correctly; or the system [PATH](https://en.wikipedia.org/wiki/PATH_(variable)) might not be updated to reflect the installed Python version.

Assuming that Python 3 is indeed installed, you can try to run it like so:

```shell
python3 w3c_validator.py index.html
```

- Error: `ModuleNotFoundError: No module named 'requests'` If you get this error you do not have the module `requests` installed in your system.

You can install `requests` using pip:

```shell
python3 -m pip install requests
```

If you don't have `pip` installed, you can get it [here](https://pypi.org/project/pip/).

# JavaScript

### Semistandard for .js files

```shell
npm install semistandard --global
```

To check style:

```shell
semistandard <filename>
```

To format:

```shell
semi-standard --fix <filename>
```

### Vim
Install [Syntastic](https://vimawesome.com/plugin/syntastic) and add these lines to .vimrc:

```vim
let g:syntastic_javascript_checkers=['standard']
let g:syntastic_javascript_standard_exec = 'semistandard'
```

For automatic formatting on save, add these two lines to .vimrc:

```vim
autocmd bufwritepost *.js silent !semistandard % --fix
set autoread
```

### Prettier is best set in a Project Folder

### Prettier for .css, .html, and .js files
First we create an initial package-json file with default values
Next we install Prettier in the package-json file
And finally we hardcode the version of Prettier we're using so it doesn't change automatically.

```shell
npm init -y
npm i --save-dev prettier
npm i --save-dev --save-exact prettier
npm i --save-dev eslint-config-prettier
```

To check our style:

```shell
npx prettier --check <filename>
```

To format our files:

```shell
npx prettier --write <filename>
```

# Python

### Installation

Ruff is available as [`ruff`](https://pypi.org/project/ruff/) on PyPI:

```shell
pip3 install ruff
```

Usage:

To run Ruff as a linter, try any of the following:

```shell
ruff check .                        # Lint all files in the current directory (and any subdirectories).
ruff check path/to/code/            # Lint all files in `/path/to/code` (and any subdirectories).
ruff check path/to/code/*.py        # Lint all `.py` files in `/path/to/code`.
ruff check path/to/code/to/file.py  # Lint `file.py`.
ruff check @arguments.txt           # Lint using an input file, treating its contents as newline-delimited command-line arguments.
```

Or, to run Ruff as a formatter:

```shell
ruff format .                        # Format all files in the current directory (and any subdirectories).
ruff format path/to/code/            # Format all files in `/path/to/code` (and any subdirectories).
ruff format path/to/code/*.py        # Format all `.py` files in `/path/to/code`.
ruff format path/to/code/to/file.py  # Format `file.py`.
ruff format @arguments.txt           # Format using an input file, treating its contents as newline-delimited command-line arguments.
```

Ruff can also be used as a [pre-commit](https://pre-commit.com/) hook via [`ruff-pre-commit`](https://github.com/astral-sh/ruff-pre-commit):

```
- repo: https://github.com/astral-sh/ruff-pre-commit
  # Ruff version.
  rev: v0.3.2
  hooks:
    # Run the linter.
    - id: ruff
      args: [ --fix ]
    # Run the formatter.
    - id: ruff-format
```

Ruff can also be used as a [VS Code extension](https://github.com/astral-sh/ruff-vscode) or alongside any other editor through the [Ruff LSP](https://github.com/astral-sh/ruff-lsp).

Ruff can also be used as a [GitHub Action](https://github.com/features/actions) via [`ruff-action`](https://github.com/chartboost/ruff-action):

```
name: Ruff
on: [ push, pull_request ]
jobs:
  ruff:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
      - uses: chartboost/ruff-action@v1
```

## Black Formatter

From Github, latest release:

```shell
pip3 install git+https://github.com/psf/black
```

OR

```shell
pip3 install black
```

To use:

```shell
black <filename.py>
```

## Pycodestyle

```shell
pip3 install pycodestyle
```
------------------------------------------------------------------------------------------------------------------------------------------

# Languages

## Python

## Installation 1:
### Deadsnakes repository

```shell
sudo add-apt-repository ppa:deadsnakes/ppa
```

```shell
ls -l /etc/apt/sources.list.d/  # (Checking if it has been added)
```

```shell
sudo apt-get update
```

```shell
sudo apt install python3.12 -y
```

By default Ubuntu comes with Python 3.10 installed, so we need to manage these two versions we have.

If you want the latest version of Python, we have to give it the most priorities.

```shell
sudo update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.10 1
sudo update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.12 2
```

```shell
sudo update-alternatives --config python3
```

## Installation 2:
# Compiling from source

```shell
sudo apt-get update
```

```shell
sudo apt -y install gdb lcov libbz2-dev libffi-dev libgdbm-dev libgdbm-compat-dev liblzma-dev libncurses5-dev libreadline6-dev libssl-dev lzma lzma-dev tk-dev uuid-dev zlib1g-dev gcc make pkg-config
```

Go to Python.org on your browser and copy link of the version you want, eg:

```shell
wget https://www.python.org/ftp/python/3.12.2/Python-3.12.2.tar.xz
```

### After step 3 finishes downloading, extract the tarball file

```shell
tar xvf Python-3.12.2.tar.xz
```

```shell
cd Python-3.12.0
```

```shell
sudo ./configure --enable-optimizations
```

```shell
sudo make -j 2
```

### The 2 is for checking the number of cores

```shell
nproc
```

```shell
sudo make install
```

### Extras: Importing my own modules
## PATH to the directory of the modules

```bash
export PYTHONPATH=/home/tafara/Documents/Code/Programs/Python/Codes/Modules:${PYTHONPATH}
```

```shell
echo $PYTHONPATH
```

## Java

```shell
sudo apt-get update
```

Go to Oracle and download the JDK version you want

```shell
wget https://download.oracle.com/java/21/latest/jdk-21_linux-x64_bin.deb
```

```shell
sudo dpkg -i jdk-21_linux-x64_bin.deb  # (To install Java)
```

## Go

Visit the Go website and copy the link of the version you want

```shell
wget https://go.dev/dl/go1.22.0.linux-amd64.tar.gz
```

```shell
tar -xzf go1.22.0.linux-amd64.tar.gz
```

```shell
sudo mv go /usr/local
```

### Add into your .bashrc or .zshrc files

```bash
export PATH=$PATH:/usr/local/go/bin
```

### EXTRAS

Subfinder, a tool for looking for subdomains

```shell
go install -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest
```

```shell
cd go/bin/
```

```shell
sudo mv subfinder /usr/bin
```

## Ruby

Visit [rvm](https://rvm.io/rvm/install)

```shell
gpg --keyserver keyserver.ubuntu.com --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
```

Visit [Ruby](https://github.com/rvm/ubuntu_rvm)

## You need software-properties-common installed in order to add PPA repositories.
## If not installed:

```shell
sudo apt-get install software-properties-common
```

```shell
sudo apt-add-repository -y ppa:rael-gc/rvm
```

```shell
sudo apt-get update
```

```shell
sudo apt-get install rvm
```

```shell
sudo usermod -a -G rvm $USER
```

```shell
echo 'source "/etc/profile.d/rvm.sh"' >> ~/.bashrc
```

Reboot

```shell
rvm install ruby 3.3.0  # (version)
```

To have multiple versions of Ruby for different projects.

1. Navigate to the Project folder and create a `.ruby-version` file

2. Inside the `.ruby-version` file >> the version you want only, eg `3.3.0`

### Example

```shell
mkdir ProjectFolder ; cd ProjectFolder
echo "3.3.0" > .ruby-version
cat .ruby-version
```

## Extras
1. Install Ruby (preferably, version >= 2.6)

2. Download and install a [Nerd Font](https://www.nerdfonts.com/)

3. Install the colorls ruby gem with:

```shell
gem install colorls
```

4. Enable tab completion for flags by entering following line to your shell configuration file (~/.bashrc or ~/.zshrc) :

```bash
source $(dirname $(gem which colorls))/tab_complete.sh
```

## Node.js

## Step 1

1. Visit (https://github.com/nvm-sh/nvm)

```shell
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
```

```shell
nvm install node
```

To switch between installed versions

```shell
nvm alias default  # (version you want)
```

## Step 2 - Installs Node.14

```shell
curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -
sudo apt-get install -y nodejs
```

# Docker

### If systemctl (systemd is not working)

```
𝐚) 𝗦𝗼𝗹𝘂𝘁𝗶𝗼𝗻 𝗳𝗼𝗿 𝗨𝗯𝘂𝗻𝘁𝘂
𝐏𝐮𝐥𝐥 𝐈𝐦𝐚𝐠𝐞 𝐜𝐨𝐦𝐦𝐚𝐧𝐝 :
docker run -d --name <Name> --privileged -v /sys/fs/cgroup:/sys/fs/cgroup:ro jrei/systemd-ubuntu:20.04
𝐋𝐨𝐠 𝐢𝐧𝐭𝐨 𝐭𝐡𝐞 𝐂𝐨𝐧𝐭𝐚𝐢𝐧𝐞𝐫 :
docker exec -it <Name> bash

𝐛) 𝗦𝗼𝗹𝘂𝘁𝗶𝗼𝗻 𝗳𝗼𝗿 𝗖𝗲𝗻𝘁𝗢𝗦
𝐏𝐮𝐥𝐥 𝐈𝐦𝐚𝐠𝐞 𝐜𝐨𝐦𝐦𝐚𝐧𝐝 :
docker run -d --name <Name> --privileged -v /sys/fs/cgroup:/sys/fs/cgroup:ro alekseychudov/centos8-systemd
𝐋𝐨𝐠 𝐢𝐧𝐭𝐨 𝐭𝐡𝐞 𝐂𝐨𝐧𝐭𝐚𝐢𝐧𝐞𝐫 :
docker exec -it <Name> bash

𝐜) 𝗦𝗼𝗹𝘂𝘁𝗶𝗼𝗻 𝗳𝗼𝗿 𝐃𝐞𝐛𝐢𝐚𝐧
𝐏𝐮𝐥𝐥 𝐈𝐦𝐚𝐠𝐞 𝐜𝐨𝐦𝐦𝐚𝐧𝐝 :
sudo docker run -d --name <Name> --privileged -v /sys/fs/cgroup:/sys/fs/cgroup:ro jrei/systemd-debian:11
𝐋𝐨𝐠 𝐢𝐧𝐭𝐨 𝐭𝐡𝐞 𝐂𝐨𝐧𝐭𝐚𝐢𝐧𝐞𝐫 :
sudo docker exec -it <Name> bash

𝐝) 𝗦𝗼𝗹𝘂𝘁𝗶𝗼𝗻 𝗳𝗼𝗿 𝗳𝗲𝗱𝗼𝗿𝗮
𝐏𝐮𝐥𝐥 𝐈𝐦𝐚𝐠𝐞 𝐜𝐨𝐦𝐦𝐚𝐧𝐝 :
sudo docker run -d --name <Name> --privileged -v /sys/fs/cgroup:/sys/fs/cgroup:ro jrei/systemd-fedora
𝐋𝐨𝐠 𝐢𝐧𝐭𝐨 𝐭𝐡𝐞 𝐂𝐨𝐧𝐭𝐚𝐢𝐧𝐞𝐫 :
sudo docker exec -it <Name> bash

𝗲) 𝗦𝗼𝗹𝘂𝘁𝗶𝗼𝗻 𝗳𝗼𝗿 𝗥𝗲𝗱𝗵𝗮𝘁 𝗟𝗶𝗻𝘂𝘅
𝐏𝐮𝐥𝐥 𝐈𝐦𝐚𝐠𝐞 𝐜𝐨𝐦𝐦𝐚𝐧𝐝 :
sudo docker run -d --name <Name> --privileged -v /sys/fs/cgroup:/sys/fs/cgroup:ro registry.access.redhat.com/ubi8/ubi-init:8.1
𝐋𝐨𝐠 𝐢𝐧𝐭𝐨 𝐭𝐡𝐞 𝐂𝐨𝐧𝐭𝐚𝐢𝐧𝐞𝐫 :
sudo docker exec -it <Name> bash

𝐟) 𝗦𝗼𝗹𝘂𝘁𝗶𝗼𝗻 𝗳𝗼𝗿 𝐀𝐥𝐦𝐚𝐋𝐢𝐧𝐮𝐱
𝐏𝐮𝐥𝐥 𝐈𝐦𝐚𝐠𝐞 𝐜𝐨𝐦𝐦𝐚𝐧𝐝 :
sudo docker run -d --name <Name> --privileged -v /sys/fs/cgroup:/sys/fs/cgroup:ro almalinux/8-init
𝐋𝐨𝐠 𝐢𝐧𝐭𝐨 𝐭𝐡𝐞 𝐂𝐨𝐧𝐭𝐚𝐢𝐧𝐞𝐫 :
sudo docker exec -it <Name> bash
```

### Terminal Set Up
### Install Oh My ZSH

```shell
sudo apt install zsh
```

```shell
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

### Install Powerlevel Plug themes

```shell
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
```

2. Set this in your ~/.zshrc

```zsh
ZSH_THEME="powerlevel10k/powerlevel10k"
```

```shell
source .zshrc
```

# Plugins

### Auto suggestions

```shell
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```

### Syntax highlighting

```shell
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```

3. Add to your .zshrc file,

```zsh
plugins=(copyfile copypath dirhistory fzf git sudo zsh-autosuggestions zsh-syntax-highlighting)
```
