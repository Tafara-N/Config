# Navigation
alias back="cd -"
alias .="cd"
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."

# List files, directories and hidden files
alias ls="colorls"
alias hidden="ls -dA .*"  # Show hidden files
alias dir-contents="ls -d */"

alias md="mkdir -p"
alias bat="batcat"
alias rmv="rm -fr"
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
alias untar="sudo tar -zxvf"

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
alias refresh="source ~/.zshrc"
alias restart="exec \"$SHELL\""

# Virtual Environments

# Python
alias debug="python3 -m pudb.run"
alias set-venv="python3 -m venv .venv"
alias start="source .venv/bin/activate"
alias tafara="source .tafara/bin/activate"
alias stop="deactivate"

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
alias django-shell="ptpython manage.py shell"  # Django shell
alias django-superuser="python3 manage.py createsuperuser"

# Unit Testing
alias unittest="python3 -m unittest"

# Nala
alias nala-install="sudo nala install"
alias nala-remove="sudo nala remove"
alias nala-update="sudo nala update"
alias nala-upgrade="sudo nala upgrade"
alias nala-fullupgrade="sudo nala full-upgrade"

# Flatpak
alias board="flatpak run org.mypaint.MyPaint"
alias koodoo="flatpak run io.github.troyeguo.koodo-reader"

# APT GET

# Release version
alias release="lsb_release -a"
alias specs="dpkg --print-architecture && arch"

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

# Install, update and upgrade
alias i-dpkg="sudo dpkg -i"
alias reboot-now="sudo reboot now"
alias poweroff="sudo shutdown now"
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
alias clear-history="echo -n > ~/.zsh_history"
alias show-thumbnail="du -sh ~/.cache/thumbnails"
alias clean-thumbnail="rm -rf ~/.cache/thumbnails/*"

	# Remove and purge
alias purge="sudo apt-get purge"
alias remove="sudo apt-get remove"
alias autoremove="sudo apt autoremove"

# PROCESSES | PID
alias proc="ps auxf | grep"

	# Ports
alias ports="netstat -tuln"
alias on-port="sudo lsof -i"      # Show which process is listening on port, :port_number

	# Using ss
alias show-ports="sudo ss -ltn"  # Show which ports are listening for connections
alias proc-port="sudo ss -ltnp"  # Show which process is listening on which port

	# Using nmap
alias nmap="sudo nmap" # Scan localhost, we can change localhost to any IP address

# UFW FIREWALL
alias tufw="sudo tufw"
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
alias pgsql-tafara='pgcli -h "127.0.0.1" -U tafara -d postgres'
alias pgsql="sudo -u postgres psql"

# MongoDB
alias mongodb-status="sudo systemctl status mongod"
alias mongodb-restart="sudo systemctl restart mongod"
alias mongodb-start="sudo systemctl start mongod"
alias mongodb-stop="sudo systemctl stop mongod"
alias mongodb-enable="sudo systemctl enable mongod"
alias mongodb-disable="sudo systemctl disable mongod"

# Mongo Users
alias mongo-atlas="mongosh 'mongodb+srv://$MONGO_USER:$MONGO_PASSWD@$APP.ntw59k5.mongodb.net/?retryWrites=true&w=majority&appName=$APP_NAME'"

# Redis
alias redis-status="sudo systemctl status redis"
alias redis-restart="sudo systemctl restart redis"
alias redis-start="sudo systemctl start redis"
alias redis-stop="sudo systemctl stop redis"
alias redis-enable="sudo systemctl enable redis"
alias redis-disable="sudo systemctl disable redis"

# Redis Users
alias redis-tafara="redis-cli -u redis://$REDIS:$REDIS_USER_PASSWD@$REDIS_ENDPOINT"

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
alias rename="git mv"

	# Commit
alias commit="git commit -m"
alias fix-commit="git commit --amend"

# Logs
alias reflog="git --no-pager reflog"
alias no-pager="git --no-pager log"
alias line-logs="git --no-pager log --oneline"
alias graph-log="git --no-pager log --oneline --graph --all"
alias graph-log-parent="git --no-pager log --oneline --decorate --graph --parents --all"
alias git-cat="git cat-file -p"

# Reset
alias reset="git reset"
alias reset-soft="git reset --soft"
alias reset-hard="git reset --hard"

	# Branches
alias rename-branch="git branch -m"
alias branch="git --no-pager branch"
alias branch-merged="git branch --merged"
alias switch="git switch"
alias mk-branch="git switch -c"

	# Pull conflicts
alias pull-norebase="git pull --no-rebase"
alias push-origin="git push origin main"

	# Merge conflicts
alias merge="git merge"
alias merge-abort="git merge --abort"
alias merge-oneline="git log --merge --oneline"

alias rebase="git rebase"
alias rebase-continue="git rebase --continue"

alias squash="git rebase -i"  # HEAD~n

alias mergetool="git mergetool"
alias checkout-ours="git checkout --ours"
alias checkout-theirs="git checkout --theirs"

	# Revert
alias revert="git revert"

	# Cherry-pick
alias cherry-pick="git cherry-pick"

	# Bisect
alias bisect="git bisect"
alias bisect-start="git bisect start"
alias bisect-good="git bisect good"
alias bisect-bad="git bisect bad"
alias bisect-reset="git bisect reset"

	# Stash
alias stash="git stash"

	# Stash with untracked files
alias stash-u="git stash -u"
alias stash-untracked="git stash --include-untracked"

	# Stash list
alias stash-list="git --no-pager stash list"
alias stash-clear="git stash clear"
alias stash-pop="git stash pop"
alias stash-apply="git stash apply"
alias stash-push="git stash push -m"
alias stash-drop="git stash drop"

	# Obtain Stash Commit Hash
# alias stash-obtain="gitk --all $( git fsck --no-reflog | awk '/dangling commit/ {print $3}' )"

	# Show the tracked files in the stash: n = index
alias show-tracked="git show -p stash@{n}"

	# Show the untracked files in the stash
alias show-untracked="git show stash@{n}^3"

	# Push
alias push="git push"
alias push-branch="git push -u origin"
alias push-force="git push origin main --force"
alias push-ready="git --no-pager diff --stat --staged"

# Pull
alias pull="git pull"
alias pull-main="git pull origin main"  # Pull from main branch
alias pull-branch="git pull origin"  # Pass the branch name

# Fetch
alias fetch="git fetch origin"

# Delete
alias del-branch="git branch -D"
alias del-branch-remote="git push origin --delete"

# Delete committed and pushed: After deleting, commit and force-push
alias unstage="git restore --staged"  # Remove file from remote repo, but keeps it locally
alias del-file="git rm"
alias del-dir="git rm -r"
alias force-push="git push --force -u origin main"

# Set username and email address
alias name="git config --global user.name"
alias email="git config --global user.email"
alias git-list="git --no-pager config --list"

# Track large files
alias track="git lfs track"

# LAZYGIT
alias lazy="lazygit"

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

# GNU stow
alias stow-test="stow -nvt ~"  # Pass the directory name
alias stow-run="stow -vt ~"

# Adopts/copies existing files
alias stow-adopt="stow --adopt -nvt ~"

# Unstow, remove symlinks
alias unstow="stow -Dvt ~"

# Redis
alias redis="iredis"

# SQLite
alias sqlite="litecli"

# C
alias compile="gcc -Wall -Wextra -pedantic -ggdb3"
alias leaks="valgrind --leak-check=full --show-leak-kinds=all --track-origins=yes --verbose --log-file=valgrind-out.txt"

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

# Convert chm, epub to pdf
alias to-pdf="ebook-convert"

# Text tools
alias get-txt="pandoc -t plain -o"  # Download webpage as text and save it to a file name
