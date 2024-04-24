# Aliases

```zsh
alias ls="colorls"
alias md="mkdir"
alias bat="batcat"
alias rmv="rm -fr"
alias ..="cd .."
alias .="cd"
alias nv="nvim"
alias ux="chmod 755"
alias ux-="chmod 664"
alias link="sudo ln -s"
alias zip="gzip"
alias zip-d="gzip -d"
alias unzip="gunzip"
alias zip2="bzip2"
alias unzip2="bunzip2"
alias grep-e="grep -E"
alias dos-unix="dos2unix"
alias unix-dos="unix2dos"
alias lint="splint"
alias check="cppcheck"
alias restart="source ~/.zshrc"

# Virtual Environments

# Python
alias start-venv="python3 -m venv env"
alias venv="source env/bin/activate"
alias stop="deactivate"

alias reqs="pip3 freeze > requirements.txt"
alias i-reqs="pip3 install -r /home/tafara/requirements.txt"
alias pip-upg="pip3 install --upgrade pip"
alias pip-up-old="pip3 list --outdated | cut -d ' ' -f 1 | xargs -n1 pip3 install -U"
alias pip-up-all="pip3 freeze --local | grep -v '^\-e' | cut -d = -f 1  | xargs -n1 pip3 install -U"

alias py-global="pyenv global"
alias py-local="pyenv local"
alias py-version="pyenv versions"

# Java
alias j-add="jenv add"
alias j-global="jenv global"
alias j-local="jenv local"
alias j-versions="jenv versions"

# APT GET
alias release="lsb_release -a"
alias update="sudo apt-get update"
alias remove="sudo apt-get remove"
alias install="sudo apt-get install -y"
alias upgrade="sudo apt-get upgrade -y"
alias clean="sudo apt-get clean"
alias autoclean="sudo apt-get autoclean"
alias check="sudo apt-get check"
alias search="apt-cache search"
alias show="apt-cache show"
alias purge="sudo apt-get purge"
alias dist-upgrade="sudo apt-get dist-upgrade"
alias upgradable="apt list --upgradable"
alias full-upgrade="sudo apt-get full-upgrade"
alias autoremove="sudo apt autoremove"

# UFW FIREWALL
alias ufw-allow="sudo ufw allow"
alias ufw-status="sudo ufw status"
alias ufw-enable="sudo ufw enable"
alias ufw-disable="sudo ufw disable"
alias ufw-reload="sudo ufw reload"

# SSH CONNECTION
alias ssh-status="sudo systemctl status ssh"
alias ssh-restart="sudo systemctl restart ssh"
alias ssh-start="sudo systemctl start ssh"
alias ssh-stop="sudo systemctl stop ssh"
alias ssh-enable="sudo systemctl enable ssh"

# SSH SERVERS
alias alx-01="ssh alx-01"
alias alx-02="ssh alx-02"
alias load-balancer="ssh load-balancer"
alias ubuntu-01="ssh ubuntu-01"
alias ubuntu-vm="ssh ubuntu-vm"

# MySQL
alias mysql-local="sudo mysql -hlocalhost -uroot -p"
alias mysql-status="sudo systemctl status mysql"
alias mysql-stop="sudo systemctl stop mysql"
alias mysql-start="sudo service mysql start"
alias mysql-restart="sudo systemctl restart mysql"
alias mysql-enable="sudo systemctl enable mysql"
alias mysql="sudo mycli -u root"

# Postgres
alias pgsql-status="sudo systemctl status postgresql"
alias pgsql-stop="sudo systemctl stop postgresql"
alias pgsql-start="sudo service start postgresql"
alias pgsql-restart="sudo systemctl restart postgresql"
alias pgsql-enable="sudo systemctl enable postgresql"

# nginx
alias nginx-status="sudo systemctl status nginx"
alias nginx-stop="sudo systemctl stop nginx"
alias nginx-start="sudo service nginx start"
alias nginx-restart="sudo systemctl restart nginx"
alias nginx-enable="sudo systemctl enable nginx"

# apache2
alias apache-status="sudo systemctl status apache2"
alias apache-stop="sudo systemctl stop apache2"
alias apache-start="sudo service apache2 start"
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

# VS Code Keyboard Shortcuts
alias showkeys="code /mnt/c/Users/tafar/AppData/Roaming/Code/User/keybindings.json"

# C
alias gcc="gcc -Wall -Wextra -pedantic "

# HTML
alias valid="w3c_validator.py"

# PYTHON
alias pip="pip3"
alias list="pip3 list"
alias python="python3"
alias pycode="pycodestyle"

# JavaScript
alias js-style="semistandard"
alias js-fix="semistandard --fix"
# alias prettier="npx prettier --check"
# alias prettier-fix="npx prettier --write"
```