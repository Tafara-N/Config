# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time Oh My Zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(colored-man-pages command-not-found copyfile copypath dirhistory fzf git sudo zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='nvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch $(uname -m)"

# Set personal aliases, overriding those provided by Oh My Zsh libs,
# plugins, and themes. Aliases can be placed here, though Oh My Zsh
# users are encouraged to define aliases within a top-level file in
# the $ZSH_CUSTOM folder, with .zsh extension. Examples:
# - $ZSH_CUSTOM/aliases.zsh
# - $ZSH_CUSTOM/macos.zsh
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

	# Navigation
alias back="cd -"
alias .="cd"
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

	# List files, directories and hidden files
alias ls="colorls"
alias hidden="ls -dA .*"  # Show hidden files
alias dir-contents="ls -d */"

alias md="mkdir"
alias bat="batcat"
alias rmv="sudo rm -fr"
alias nv="nvim"
alias usage="tldr"

alias cpfile="copyfile"
alias cppath="copypath"
alias zshrc="code ~/.zshrc"
alias bashrc="code ~/.bashrc"

	# Permissions        #  usr | grp | others
alias x="chmod 755"      # rwx  | rwx | rwx
alias x-="chmod 644"     # r = 4, w = 2, x = 1
alias link="sudo ln -s"  # sudo ln -s /path/to/file /path/to/symlink

	# Compress files and directories
alias zip-dir="gzip -d"  # Decompress files and directories
alias untar="sudo tar -zxvf"

alias grep-e="grep -E"

	# List all users
alias list-users="cat /etc/passwd | grep -vE '(/bin/false|/sbin/nologin|/bin/sync)' | cut -d: -f1"
alias ch-tafara="sudo chown tafara"
alias ch-root="sudo chown root"

	# Add user
alias add-user="sudo adduser" # or sudo useradd new_username

	# Remove/delete a user, first you can use:
alias del-user="sudo userdel"  # username

	# Then you may want to delete the home directory for the deleted user account :
alias rmv-home="sudo rm -r /home/"  # username

	# Modify the username of a user
alias ch-username="usermod -l new_username old_username"

	# Change the password for a user
alias change-passwd="sudo passwd"   # username

	# To add a user to the sudo group
alias add-sudo="usermod -aG sudo"  # or adduser username sudo

	# Convert file to Unix or DOS format
alias dos-unix="dos2unix"
alias unix-dos="unix2dos"

	# Restart the terminal
alias restart="source ~/.zshrc"
alias refresh="exec \"$SHELL\""

# Virtual Environments

# Python
alias set-venv="python3 -m venv .venv"
alias start="source .venv/bin/activate"
alias stop="deactivate"

# Conda
alias enable-base="conda config --set auto_activate_base true"
alias disable-base="conda config --set auto_activate_base false"
alias conda-start="conda create --name .venv"
alias conda-venv="conda activate .venv"
alias conda-base="conda activate base"
alias conda-envs="conda info --envs"
alias conda-stop="conda deactivate"

alias requirements="pip3 freeze > requirements.txt"
alias conda-requirements="pip list --format=freeze > requirements.txt"
alias i-requirements="pip3 install -r requirements.txt"

	# Upgrading pip modules
alias pip-upgrade="pip3 install --upgrade pip"
alias pip-uninstall="pip3 freeze | xargs pip uninstall -y"
alias pip-up-old="pip3 list --outdated | cut -d ' ' -f 1 | xargs -n1 pip3 install -U"
alias pip-up-all="pip3 freeze --local | grep -v '^\-e' | cut -d = -f 1  | xargs -n1 pip3 install -U"

	# Django Project
alias django-project="django-admin startproject"  # name of the project
alias django-server="python3 manage.py runserver"
alias django-app="python3 manage.py startapp"  # name of the app
alias django-migrations="python3 manage.py makemigrations"  # creates a migration file
alias django-migrate="python3 manage.py migrate"  # migrates data into a database
alias django-shell="bpython manage.py shell"  # Django shell
alias django-superuser="python3 manage.py createsuperuser"

	# Flask Project
alias flask-run="flask run"
alias flask-runapp="flask --app"
alias flask-shell="flask shell"


	# Unit Testing
alias test-file="python3 -m unittest"
alias tests-dir="python3 -m unittest discover tests"

# Python
alias py-local="pyenv local"
alias py-global="pyenv global"
alias py-install="pyenv install"
alias py-versions="pyenv versions"
alias py-uninstall="pyenv uninstall"

# Java
alias j-add="jenv add"
alias j-local="jenv local"
alias j-global="jenv global"
alias j-versions="jenv versions"

# Ruby
alias ruby-local="rbenv local"
alias ruby-global="rbenv global"
alias ruby-install="rbenv install"
alias ruby-versions="rbenv versions"
alias ruby-uninstall="rbenv uninstall"
alias ruby-remote="rbenv --list-remote"

# Node
alias node-use="nvm use"
alias node-versions="nvm ls"
alias node-install="nvm install"
alias node-remote="nvm ls-remote"
alias node-uninstall="nvm uninstall"

# APT GET

	# Release version
alias release="lsb_release -a"

	# Packages list: Ubuntu
alias packages="sudo dpkg --get-selections > packages.txt"
alias i-packages="sudo xargs -a packages.txt apt install"
alias snap-list="snap list --all"

	# Packages list: VS Code
alias code-extensions="code --list-extensions > vscode-extensions.list"
alias i-code-extensions="cat vscode-extensions.list | xargs -L 1 code --install-extension"

	# Search Packages
alias search="apt-cache search"
alias show="apt-cache show"
alias check="sudo apt-get check"

	# Convert chm, epub to pdf
alias to-pdf="ebook-convert"

	# Install, update and upgrade
alias reboot-now="sudo reboot now"
alias poweroff="sudo shutdown now"
alias i-dpkg="sudo dpkg -i"
alias install="sudo apt-get install -y"
alias update="sudo apt-get update"
alias upgrade="sudo apt-get upgrade -y"
alias upgradable="apt list --upgradable"
alias full-upgrade="sudo apt-get full-upgrade"
alias dist-upgrade="sudo apt-get dist-upgrade"
alias update-atlas="sudo apt-get install --only-upgrade mongodb-atlas-cli"

	# Clean distro
alias set-zsh="p10k configure"
alias autoclean="sudo apt-get autoclean"
alias daemon-reload="sudo systemctl daemon-reload"

alias list-running="sudo systemctl list-units --type=service --state=running"

	# Clear APT cache
alias show-cache="sudo du -sh /var/cache/apt"
alias clean-cache="sudo apt-get clean"

	# Clear systemd journal
alias journal-usage="journalctl --disk-usage"
alias journal-clean="sudo journalctl --vacuum-time=2d"

	# Clear old snaps
alias show-snaps="du -h /var/lib/snapd/snaps"  # Then run rmv-old-snaps

	# Free up memory, OR: free-memory
alias free-mem="free -h && sudo sysctl -w vm.drop_caches=3 && sudo sync && echo 3 | sudo tee /proc/sys/vm/drop_caches && free -h"

	# Clear Thumbnail Cache
alias show-thumbnail="du -sh ~/.cache/thumbnails"
alias clean-thumbnail="rm -rf ~/.cache/thumbnails/*"

	# Remove and purge
alias purge="sudo apt-get purge"
alias remove="sudo apt-get remove"
alias autoremove="sudo apt autoremove"

# PROCESSES | PID
alias proc="ps auxf | grep"
alias k15="sudo kill -15"
alias k9="sudo kill -9"
alias k6="sudo kill -6"
alias k3="sudo kill -3"

	# Ports
alias ports="netstat -tuln"
alias on-port="sudo lsof -i"      # Show which process is listening on port, :port_number

	# Using ss
alias show-ports="sudo ss -ltn"  # Show which ports are listening for connections
alias proc-port="sudo ss -ltnp"  # Show which process is listening on which port

	# Using nmap
alias nmap="sudo nmap localhost" # Scan localhost, we can change localhost to any IP address

# UFW FIREWALL
alias ufw-status="sudo ufw status"
alias ufw-numbers="sudo ufw status numbered"
alias ufw-verbose="sudo ufw status verbose"
alias ufw-app="sudo ufw app list"
alias ufw-allow="sudo ufw allow"
alias ufw-deny-incoming="sudo ufw default deny incoming"
alias ufw-allow-outgoing="sudo ufw default allow outgoing"
alias ufw-deny="sudo ufw deny"
alias ufw-delete="sudo ufw delete"
alias ufw-reload="sudo ufw reload"
alias ufw-enable="sudo ufw enable"
alias ufw-disable="sudo ufw disable"

# SSH CONNECTION
alias ssh-status="sudo systemctl status ssh"
alias ssh-restart="sudo systemctl restart ssh"
alias ssh-start="sudo systemctl start ssh"
alias ssh-stop="sudo systemctl stop ssh"
alias ssh-enable="sudo systemctl enable ssh"

# SSH SERVERS

	# Digital Ocean
alias d_ocean01="ssh digital-ocean"
alias d_ocean02="ssh digital-ocean_01"

# VIRTUAL MACHINES

	# Windows
alias win10="ssh win10"

	# Kali Linux
alias kali="ssh kali-linux"

# COPYING FILES AND DIRECTORIES

# Directory from local to remote
alias to-remote="scp -r"

# MySQL
alias mysql-status="sudo systemctl status mysql"
alias mysql-restart="sudo systemctl restart mysql"
alias mysql-start="sudo systemctl start mysql"
alias mysql-stop="sudo systemctl stop mysql"
alias mysql-enable="sudo systemctl enable mysql"
alias mysql-disable="sudo systemctl disable mysql"

# MySQL USERS
alias mysql="sudo mycli -u $MySQL -p $MySQL_PASSWD"
alias mysql-tafara="sudo mycli -u $MySQL_USER -p $MySQL_PASSWD"

	# Connect and Execute MySQL Commands on the terminal
alias mysql-local="sudo mysql -hlocalhost -u $MySQL -p $MySQL_PASSWD"

	# Dump Database
alias dump="mysqldump -u $MySQL -p"

# Postgres
alias pgsql-status="sudo systemctl status postgresql"
alias pgsql-restart="sudo systemctl restart postgresql"
alias pgsql-start="sudo systemctl start postgresql"
alias pgsql-stop="sudo systemctl stop postgresql"
alias pgsql-enable="sudo systemctl enable postgresql"
alias pgsql-disable="sudo systemctl disable postgresql"

# PostgresSQL USERS
alias postgres='pgcli -h "127.0.0.1" -U postgres -d postgres'
alias pgsql-<user>='pgcli -h "127.0.0.1" -U $USER -d postgres'
alias pgsql="sudo -u postgres psql"

# MongoDB
alias mongodb-status="sudo systemctl status mongod"
alias mongodb-restart="sudo systemctl restart mongod"
alias mongodb-start="sudo systemctl start mongod"
alias mongodb-stop="sudo systemctl stop mongod"
alias mongodb-enable="sudo systemctl enable mongod"
alias mongodb-disable="sudo systemctl disable mongod"

# Mongo Users
alias mongo-atlas="mongosh 'mongodb+srv://$MONGO_USER:$MONGO_USER_PASSWD@$APP.ntw59k5.mongodb.net/?retryWrites=true&w=majority&appName=$APP_NAME'"

# Redis
alias redis-status="sudo systemctl status redis"
alias redis-restart="sudo systemctl restart redis"
alias redis-start="sudo systemctl start redis"
alias redis-stop="sudo systemctl stop redis"
alias redis-enable="sudo systemctl enable redis"
alias redis-disable="sudo systemctl disable redis"

# Redis Users
alias redis-<user>="redis-cli -u redis://$REDIS:$REDIS_USER_PASSWD@$REDIS_ENDPOINT"

# Cassandra
alias cass-status="sudo /etc/init.d/cassandra status"
alias cass-restart="sudo /etc/init.d/cassandra restart"
alias cass-start="sudo /etc/init.d/cassandra start"
alias cass-stop="sudo /etc/init.d/cassandra stop"
alias cass-enable="sudo /etc/init.d/cassandra enable"

# Nginx
alias nginx-status="sudo systemctl status nginx"
alias nginx-restart="sudo systemctl restart nginx"
alias nginx-start="sudo systemctl start nginx"
alias nginx-stop="sudo systemctl stop nginx"
alias nginx-enable="sudo systemctl enable nginx"
alias nginx-disable="sudo systemctl disable nginx"

# Apache2
alias apache-status="sudo systemctl status apache2"
alias apache-restart="sudo systemctl restart apache2"
alias apache-start="sudo systemctl start apache2"
alias apache-stop="sudo systemctl stop apache2"
alias apache-enable="sudo systemctl enable apache2"
alias apache-disable="sudo systemctl disable apache2"

# HAProxy
alias haproxy-status="sudo systemctl status haproxy"
alias haproxy-restart="sudo systemctl restart haproxy"
alias haproxy-start="sudo systemctl start haproxy"
alias haproxy-stop="sudo systemctl stop haproxy"
alias haproxy-enable="sudo systemctl enable haproxy"
alias haproxy-disable="sudo systemctl disable haproxy"

# Puppetserver
alias puppet-status="sudo systemctl status puppetserver"
alias puppet-restart="sudo systemctl restart puppetserver"
alias puppet-start="sudo systemctl start puppetserver"
alias puppet-stop="sudo systemctl stop puppetserver"
alias puppet-enable="sudo systemctl enable puppetserver"
alias puppet-disable="sudo systemctl disable puppetserver"

# Docker
alias docker-status="sudo systemctl status docker"
alias docker-restart="sudo systemctl restart docker"
alias docker-start="sudo systemctl start docker"
alias docker-stop="sudo systemctl stop docker"
alias docker-enable="sudo systemctl enable docker"
alias docker-disable="sudo systemctl disable docker"

# Docker Commands
alias docker-run="docker run -it --name"  # Pass a container name and image
# alias docker-start="docker start"  # Pass a container
alias docker-exec="docker exec -it"  # Pass a container and shell eg /bin/bash
# alias docker-stop="docker stop"  # Pass a container
alias docker-remove="docker rm"  # Pass a container

# Docker: Puppet
alias puppetserver="docker run -i -t techsk8/puppetserver-ubuntu22 /bin/bash"
alias puppetagent="docker run -i -t techsk8/puppetagent-ubuntu22 /bin/bash"

# Vagrant
alias vagrant-status="sudo systemctl status vagrant"
alias vagrant-restart="sudo systemctl restart vagrant"
alias vagrant-start="sudo systemctl start vagrant"
alias vagrant-stop="sudo systemctl stop vagrant"
alias vagrant-enable="sudo systemctl enable vagrant"
alias vagrant-disable="sudo systemctl disable vagrant"

# vagrant Commands
alias vagrant-remove="vagrant box remove"  # Pass the box name

# GIT
alias add="git add"
alias all="git add ."
alias log="git log"
alias init="git init"
alias clone="git clone"
alias status="git status"

	# Branches
alias branch="git branch"
alias branch-merged="git branch --merged"
alias checkout="git checkout"
alias checkin="git checkout -b"

	# Pull conflicts
alias pull-norebase="git pull --no-rebase"
alias push-origin="git push origin main"

	# Merge conflicts
alias merge="git merge"
alias merge-abort="git merge --abort"
alias merge-oneline="git log --merge --oneline"

	# Stash
alias stash="git stash"

	# Stash with untracked files
alias stash-u="git stash -u"
alias stash-untracked="git stash --include-untracked"

	# Stash list
alias stash-list="git stash list"
alias stash-clear="git stash clear"
alias stash-pop="git stash pop"
alias stash-apply="git stash apply"
alias stash-push="git stash push -m"

	# Stash drop specific stash: n = index
alias stash-drop="git stash drop stash@{n}"

	# Obtain Stash Commit Hash
# alias stash-obtain="gitk --all $( git fsck --no-reflog | awk '/dangling commit/ {print $3}' )"

	# Show the tracked files in the stash: n = index
alias show-tracked="git show -p stash@{n}"

	# Show the untracked files in the stash
alias show-untracked="git show stash@{n}^3"

	# Commit
alias commit="git commit -m"
alias add-commit="git commit -a -m"

	# Push
alias push="git push"
alias push-branch="git push -u origin"

	# Pull
alias pull="git pull"
alias pull-main="git pull origin main"  # Pull from main branch
alias pull-branch="git pull origin"  # Pass the branch name

	# Fetch
alias fetch="git fetch origin"

	# Delete
alias del-branch="git push origin --delete"

	# Delete committed and pushed: AFter deleting, commit and force-push
alias rm-cache="git rm --cached"  # Remove file from remote repo, but keeps it locally
alias delete-file="git rm"
alias delete-folder="git rm -r"
alias force-push="git push --force -u origin main"

	# Set username and email address
alias name="git config --global user.name"
alias email="git config --global user.email"
alias git-list="git config --list"

# LAZYGIT
alias lazy="lazygit"

# If you change repos in lazygit and want your shell to change directory
# into that repo on exiting lazygit, add this to your ~/.zshrc (or other rc file):

lg()
{
    export LAZYGIT_NEW_DIR_FILE=~/.lazygit/newdir

    lazygit "$@"

    if [ -f $LAZYGIT_NEW_DIR_FILE ]; then
            cd "$(cat $LAZYGIT_NEW_DIR_FILE)"
            rm -f $LAZYGIT_NEW_DIR_FILE > /dev/null
    fi
}

# Ansible
alias playbook="ansible-playbook"

# VS Code Shortcuts
alias showkeys="code /home/tafara/.config/Code/User/keybindings.json"
alias settings="code /home/tafara/.config/Code/User/settings.json"

# Snippets Config
alias snippets-fsharp="code /home/tafara/.config/Code/User/snippets/fsharp.json"
alias snippets-groovy="code /home/tafara/.config/Code/User/snippets/groovy.json"
alias snippets-html="code /home/tafara/.config/Code/User/snippets/html.json"
alias snippets-js="code /home/tafara/.config/Code/User/snippets/javascript.json"
alias snippets-lua="code /home/tafara/.config/Code/User/snippets/lua.json"
alias snippets-perl="code /home/tafara/.config/Code/User/snippets/perl.json"
alias snippets-php="code /home/tafara/.config/Code/User/snippets/php.json"
alias snippets-text="code /home/tafara/.config/Code/User/snippets/plaintext.json"
alias snippets-pwsh="code /home/tafara/.config/Code/User/snippets/powershell.json"
alias snippets-py="code /home/tafara/.config/Code/User/snippets/python.json"
alias snippets-rb="code /home/tafara/.config/Code/User/snippets/ruby.json"
alias snippets-sh="code /home/tafara/.config/Code/User/snippets/shellscript.json"

# Redis
alias redis="iredis"

# SQLite
alias sqlite="litecli"

# C
alias options="-Wall -Wextra -pedantic"

# PYTHON
alias list="pip3 list"
alias py-package="pip3 show"
alias repl="bpython"
alias pyshell="ptpython"
alias pycode="pycodestyle"

# JavaScript
alias js-style="semistandard"
alias js-fix="semistandard --fix"
alias npx-style="npx eslint"
alias npx-fix="npx eslint --fix"
alias prettier="npx prettier --check"
alias prettier-fix="npx prettier --write"

# JSON tools
alias jsonify="jq ."
alias json="rich --json"
alias valid-json="jq empty"  # Check if JSON is valid
alias py-json="python3 -m json.tool"

# CSV tools: Print CSV files in a table format
alias csv="rich --csv"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# To run pyautogui
export DISPLAY=:0
# xhost +local:

# Pyenv
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# Node NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Go
export PATH=$PATH:/usr/local/go/bin

# Added by `rbenv init` on Tue Aug 20 11:32:49 PM SAST 2024
eval "$(~/.rbenv/bin/rbenv init - --no-rehash zsh)"

# assuming that rbenv was installed to `~/.rbenv`
FPATH=~/.rbenv/completions:"$FPATH"

autoload -U compinit
compinit

# Clip-View: clip
export PATH=$HOME/.local/bin:$PATH
