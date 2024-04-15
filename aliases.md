```
# Aliases
# alias zsh="nvim ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias ls="colorls"
alias md="mkdir"
alias bat="batcat"
alias rmv="rm -fr"
alias ..="cd .."
alias .="cd"
alias cp="cp -un"
alias vi="vim"
alias nv="nvim"
alias ux="chmod 755"
alias ux-="chmod 664"
# alias cal="ncal"
alias zip="gzip"
alias zip-="gzip -d"
alias unzip="gunzip"
alias zip2="bzip2"
alias unzip2="bunzip2"
alias grep-e="grep -E"
alias dos-unix="dos2unix"
alias unix-dos="unix2dos"
alias check="cppcheck"
alias lint="splint"

# APT GET
alias update="sudo apt-get update -y"
alias remove="sudo apt remove"
alias install="sudo apt install -y"
alias upgrade="sudo apt-get upgrade -y"
alias upgradable="sudo apt list --upgradable"
alias full-upgrade="sudo apt-get full-upgrade -y"
alias autoremove="sudo apt autoremove"

# SSH CONNECTION
alias listen="sudo ss -ltup"
alias allow="sudo ufw allow ssh"
alias ssh-status="sudo systemctl status ssh"
alias ssh-restart="sudo systemctl restart ssh"
alias ssh-stop="sudo systemctl stop ssh"
alias ssh-enable="sudo systemctl enable ssh"

# MySQL
alias mysql-status="sudo systemctl status mysql"
alias mysql-stop="sudo systemctl stop mysql"
alias mysql-start="sudo systemctl start mysql"
alias mysql-restart="sudo systemctl restart mysql"
alias mysql-enable="sudo systemctl enable mysql"
alias mysql="sudo mycli -u root"

# Postgres
alias pgsql-status="sudo systemctl status postgresql"
alias pgsql-stop="sudo systemctl stop postgresql"
alias pgsql-start="sudo systemctl start postgresql"
alias pgsql-restart="sudo systemctl restart postgresql"
alias pgsql-enable="sudo systemctl enable postgresql"

# Nginx
alias nginx-status="sudo systemctl status nginx"
alias nginx-stop="sudo systemctl stop nginx"
alias nginx-start="sudo systemctl start nginx"
alias nginx-restart="sudo systemctl restart nginx"
alias nginx-enable="sudo systemctl enable nginx"

# Apache2
alias apache-status="sudo systemctl status apache2"
alias apache-stop="sudo systemctl stop apache2"
alias apache-start="sudo systemctl start apache2"
alias apache-restart="sudo systemctl restart apache2"
alias apache-enable="sudo systemctl enable apache2"

# HAProxy
alias haproxy-status="sudo systemctl status haproxy"
alias haproxy-stop="sudo systemctl stop haproxy"
alias haproxy-start="sudo systemctl start haproxy"
alias haproxy-restart="sudo systemctl restart haproxy"
alias haproxy-enable="sudo systemctl enable haproxy"

# Puppetserver
alias puppetserver-status="sudo systemctl status puppetserver"
alias puppetserver-start="sudo systemctl start puppetserver"
alias puppetserver-restart="sudo systemctl restart puppetserver"
alias puppetserver-stop="sudo systemctl stop puppetserver"
alias puppetserver-enable="sudo systemctl enable puppetserver"

# GIT
alias add="git add"
alias all="git add ."
alias init="git init"
alias clone="git clone"
alias status="git status"
alias branch="git branch"
alias checkout="git checkout"
alias commit="git commit -m"
alias push="git push"
alias pull="git pull"
alias name="git config --global user.name"
alias email="git config --global user.email"

# C
alias gcc="gcc -Wall -Wextra -pedantic"

# PYTHON
alias pycode="pycodestyle"
alias valid="./w3c_validator.py"
alias python="python3"
alias pip="pip3"
alias list="pip3 list"

# JavaScript
alias style="semistandard"
alias style-fix="semistandard --fix"
# alias prettier="npx prettier --check"
# alias prettier-fix="npx prettier --write"

# Virtual Environments
alias tafara="source venv/bin/activate"
alias stop="deactivate"
```

