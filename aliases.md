# Aliases
alias zsh="nvim ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias ls="colorls"
alias md="mkdir"
alias bat="batcat"
alias rmv="rm -fr"
alias ..="cd .."
alias .="cd"
alias nv="nvim"
alias ux="chmod u+x"
alias ux-="chmod u-x"
alias lint="splint"
alias check="cppcheck"

# APT GET
alias update="sudo apt-get update"
alias remove="sudo apt-get remove"
alias install="sudo apt install"
alias upgrade="sudo apt-get upgrade"
alias upgradable="apt list --upgradable"
alias full-upgrade="sudo apt-get full-upgrade"
alias autoremove="sudo apt autoremove"

# PACKAGE MANAGERS
alias pip="pip3"
alias list="pip3 list"
alias python="python3"

# SSH CONNECTION  
alias listen="sudo ss -ltup"
alias allow="sudo ufw allow ssh"
alias ssh-status="sudo systemctl status ssh"

# mySQL
alias mysql-status="sudo systemctl status mysql"
alias mysql-stop="sudo systemctl stop mysql"
alias mysql-restart="sudo systemctl restart mysql"
alias mysql="sudo mycli -u root"

# nginx
alias nginx-status="sudo systemctl status nginx"
alias nginx-stop="sudo systemctl stop nginx"
alias nginx-restart="sudo systemctl restart nginx"

# apache2
alias apache-status="sudo systemctl status apache2"
alias apache-stop="sudo systemctl stop apache2"
alias apache-restart="sudo systemctl restart apache2"


# GIT
alias add="git add"
alias all="git add ."
alias init="git init"
alias clone="git clone"
alias status="git status"
alias branch="git branch"
alias commit="git commit -m"
alias push="git push"
alias pull="git pull"
alias name="git config --global user.name"
alias email="git config --global user.email"

# C
alias gcc="gcc -Wall -Wextra -pedantic "

# PYTHON
alias pycode="pycodestyle"
alias valid="./w3c_validator.py"

# JavaScript
alias style="semistandard"
alias style-fix="standard --fix"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

source "/etc/profile.d/rvm.sh"

# source $(dirname $(gem which colorls))/tab_complete.sh

export PATH="$HOME/.local/bin:$PATH"

# Python modules path
export PATH=$PATH:/home/tafara/.local/bin

# My own Python modules path
export PYTHONPATH=/home/tafara/Documents/Code/Programs/Python/Codes/Modules:${PYTHONPATH}

# AirBnB Module path
export PYTHONPATH=/home/tafara/Documents/Code/Programs/Python/Codes/Projects/AirBnB_clone:${PYTHONPATH}

# CS50
export CS50PATH=/home/tafara/libcs50/src:${CS50PATH}

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
