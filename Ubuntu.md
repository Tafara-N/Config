# My Ubuntu terminal configurations
### Uninstalling VIM

```
sudo apt-get remove vim.tiny
sudo apt-get remove vim
```

### Installing VIM - latest stable version

```
sudo add-apt-repository ppa:jonathonf/vim
sudo apt update
sudo apt install vim
vim --version
```

## Adding plugins

Plugin manager that lets us add/remove plugins Vundle

```
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

## For VIM setup, look into the Setup file
### Installing NVIM

1. Download `nvim-linux64.tar.gz` from (https://github.com/neovim/neovim/releases)

2. On WSL, move file from Windows to Linux destination (mv nvim-linux64.tar.gz /usr/local/bin)

```
cd /usr/local/bin
```

```
sudo tar xzvf nvim-linux64.tar.gz
```

5. Remove nvim-linux64.tar.gz, because we have the nvim-linux64 file

### Create a symbolic link

```
ln -s ./nvim-linux64/bin/nvim ./nvim
```

### Installing LazyVim
### Back up current Neovim
### Step 1

```
(# required)
mv ~/.config/nvim{,.bak}

(# optional but recommended)
mv ~/.local/share/nvim{,.bak}
mv ~/.local/state/nvim{,.bak}
mv ~/.cache/nvim{,.bak}
```

Step 2

```
git clone https://github.com/LazyVim/starter ~/.config/nvim
```

Step 3: Remove the .git folder, so you can add it to your own repo later

```
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

```
sudo apt install mysql-server
```

## Check mysql status
```
sudo service mysql status
```

## Stop mysql
```
sudo service mysql stop
```

## Start mysql
```
sudo service mysql start
```

## To set password for root User
```
sudo mysql
```

```mysql
ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'password you want';
```

## Exit out of mysql
## Run the secure installation script
```
sudo mysql_secure_installation
```

### Enter the password you just set:

Press y (yes) on all the questions

### After all is done, if we try to login into mysql with root it won't work:

```
sudo mysql
ERROR 1045 (28000): Access denied for user 'root'@'localhost' (using password: NO)
```

### To fix this:

```
mysql -u root -p
```

### Enter your mysql password you set:

```mysql
ALTER USER 'root'@'localhost' IDENTIFIED WITH auth_socket;
```

### Exit out of mysql

## Install mycli for mySQL
```
pip3 install mycli
```

OR

```
sudo apt-get install mycli
```

# Installing Postgre
```
sudo apt install postgresql postgresql-contrib
```

## Start Postgre
```
sudo systemctl start postgresql.service
```

## Install pgcli for Postgre
```
sudo apt-get install libpq-dev python-dev
pip3 install pgcli
```

OR

```
sudo apt-get install pgcli
```

# Installing Apache2
```
sudo apt update
sudo apt install apache2
```

# Installing Nginx
[Installing Nginx](https://docs.nginx.com/nginx/admin-guide/installing-nginx/installing-nginx-open-source/#installing-prebuilt-ubuntu-packages)

When:

```
sudo nginx

nginx: [emerg] bind() to 0.0.0.0:80 failed (98: Address already in use)

nginx: [emerg] bind() to 0.0.0.0:80 failed (98: Address already in use)

nginx: [emerg] bind() to 0.0.0.0:80 failed (98: Address already in use)

nginx: [emerg] bind() to 0.0.0.0:80 failed (98: Address already in use)

nginx: [emerg] bind() to 0.0.0.0:80 failed (98: Address already in use)

nginx: [emerg] still could not bind()
```

OR

```
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

```
sudo pkill -f nginx & wait $!
sudo systemctl start nginx
```

Or apache2 is listening on the same port and can be stopped:

```
sudo /etc/init.d/apache2 stop
```

### Installing betty linter for .c files

```
mkdir Betty && cd Betty
```

```
git clone https://github.com/holbertonschool/Betty.git
```

```
cd Betty
```

```
sudo ./install.sh
```

```
vim betty and paste >> look in the setup file
```

```
chmod u+x betty
```

```
sudo mv betty /bin/
```

To check style:

```
betty filename.c
```

### Installing Formatter/Linter for .py files

## Linter for .html and .css files
## Requirements
- [Python 3](https://www.python.org/downloads/)
- [Requests: HTTP for Humans™](https://requests.readthedocs.io/en/latest/user/install/)

## Quickstart
1. Clone this repo

```
git clone https://github.com/holbertonschool/W3C-Validator.git
```

2. Run the validator command from within

Single file:

```
./w3c_validator.py index.html
./w3c_validator.py css/styles.css
```

Multiple files:

```
./w3c_validator.py index.html article.html css/styles.css
```

All errors are printed in `STDERR`; Exit status = # of errors (0 on success)

### Troubleshooting
- Error: bad interpreter: `No such file or directory` If you get this error you might not have Python installed correctly; or the system [PATH](https://en.wikipedia.org/wiki/PATH_(variable)) might not be updated to reflect the installed Python version.

Assuming that Python 3 is indeed installed, you can try to run it like so:

```
python3 w3c_validator.py index.html
```

- Error: `ModuleNotFoundError: No module named 'requests'` If you get this error you do not have the module `requests` installed in your system.

You can install `requests` using pip:

```
python3 -m pip install requests
```

If you don't have `pip` installed, you can get it [here](https://pypi.org/project/pip/).

### Formater/Linter for .js files
```
sudo npm install semistandard --global
```

To check style:

```
semistandard <filename>
```

To format:

```
semi-standard --fix <filename>
```

### Vim
Install [Syntastic](https://vimawesome.com/plugin/syntastic) and add these lines to .vimrc:

```vim
let g:syntastic_javascript_checkers=['standard']
let g:syntastic_javascript_standard_exec = 'semistandard'
```

For automatic formatting on save, add these two lines to .vimrc:

```
autocmd bufwritepost *.js silent !semistandard % --fix
set autoread
```

### Prettier is best set in a Project Folder

### Formater/Linter for .css, .html, and .js files
First we create an initial package-json file with default values
Next we install Prettier in the package-json file
And finally we hardcode the version of Prettier we're using so it doesn't change automatically.

```
npm init -y
npm -i --save-dev prettier
```

To check our style:

```
npx prettier --check <filename>
```

To format our files:

```
npx prettier --write <filename>
```


### Batcat command (cat)

```
sudo apt install batcat
```

# Languages
## Python

## Installation 1:
### Deadsnakes repository

```
sudo add-apt-repository ppa:deadsnakes/ppa
```

```
ls -l /etc/apt/sources.list.d/ (Checking if it has been added)
```

```
sudo apt-get update
```

```
sudo apt install python3.12 -y
```

By default Ubuntu comes with Python 3.10 installed, so we need to manage these two versions we have.

If you want the latest version of Python, we have to give it the most priorities.

```
sudo update-alternatives --install /usr/bin/python3 python3 /usr//bin/python3.10 1
```

```
sudo update-alternatives --config python3
```

## Installation 2:
# Compiling from source

```
sudo apt-get update
```

```
sudo apt -y install gdb lcov libbz2-dev libffi-dev libgdbm-dev libgdbm-compat-dev liblzma-dev libncurses5-dev libreadline6-dev libssl-dev lzma lzma-dev tk-dev uuid-dev zlib1g-dev gcc make pkg-config
```

Go to Python.org on your browser and copy link of the version you want, eg:

```
wget https://www.python.org/ftp/python/3.12.2/Python-3.12.2.tar.xz
```

### After step 3 finishes downloading, extract the tarball file

```
tar xvf Python-3.12.2.tar.xz
```

```
cd Python-3.12.0
```

```
sudo ./configure --enable-optimizations
```

```
sudo make -j 2
```

### The 2 is for checking the number of cores

```
nproc
```

```
sudo make install
```

### Extras: Importing my own modules
## PATH to the directory of the modules

```bash
export PYTHONPATH=/home/tafara/Documents/Code/Programs/Python/Codes/Modules:${PYTHONPATH}
```

```bash
echo $PYTHONPATH
```

## Java

```
sudo apt-get update
```

Go to Oracle and download the JDK version you want

```
wget https://download.oracle.com/java/21/latest/jdk-21_linux-x64_bin.deb
```

```
sudo dpkg -i jdk-21_linux-x64_bin.deb (To install Java)
```

## Go

Visit the Go website and copy the link of the version you want

```
wget https://go.dev/dl/go1.22.0.linux-amd64.tar.gz
```

```
tar -xzf go1.22.0.linux-amd64.tar.gz
```

```
sudo mv go /usr/local
```

### Add into your .bashrc or .zshrc files

```bash
export PATH=$PATH:/usr/local/go/bin
```

### EXTRAS

Subfinder, a tool for looking for subdomains

```
go install -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest
```

```
cd go/bin/
```

```
sudo mv subfinder /usr/bin
```

## Ruby

Visit [rvm](https://rvm.io/rvm/install)

```
gpg --keyserver keyserver.ubuntu.com --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
```

Visit [Ruby](https://github.com/rvm/ubuntu_rvm)

## You need software-properties-common installed in order to add PPA repositories.
## If not installed:

```
sudo apt-get install software-properties-common
```

```
sudo apt-add-repository -y ppa:rael-gc/rvm
```

```
sudo apt-get update
```

```
sudo apt-get install rvm
```

```
sudo usermod -a -G rvm $USER
```

```
echo 'source "/etc/profile.d/rvm.sh"' >> ~/.bashrc
```

Reboot

```
rvm install ruby (version)
```

To have multiple versions of Ruby for different projects.

1. Navigate to the Project folder and create a `.ruby-version` file

2. Inside the `.ruby-version` file >> the version you want only, eg `3.3.0`

## Extras
1. Install Ruby (preferably, version >= 2.6)

2. Download and install a [Nerd Font](https://www.nerdfonts.com/)

3. Install the colorls ruby gem with:

```
gem install colorls
```

4. Enable tab completion for flags by entering following line to your shell configuration file (~/.bashrc or ~/.zshrc) :

```
source $(dirname $(gem which colorls))/tab_complete.sh
```

## Node.js

## Step 1

1. Visit (https://github.com/nvm-sh/nvm)

```
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
```

```
nvm install node
```

To switch between installed versions

```
nvm alias default (version you want)
```

## Step 2 - Installs Node.14
```
curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -
sudo apt-get install -y nodejs
```

### Terminal Set Up
### Install Oh My ZSH

```
sudo apt install zsh
```

```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

### Install Powerlevel Plug themes

```
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
```

2. Set this in your ~/.zshrc

```zsh
ZSH_THEME="powerlevel10k/powerlevel10k"
```

```
source .zshrc
```

# Plugins

### Auto suggestions
```
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```

### Syntax highlighting
```
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```

3. Add to your .zshrc file,

```zsh
plugins=(git sudo zsh-autosuggestions zsh-syntax-highlighting)
```
