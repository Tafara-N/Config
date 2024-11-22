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

# Environment variables for MySQL DB
export MySQL=""
export MySQL_PORT=
export MySQL_USER=""
export MySQL_HOST=""
export MySQL_PASSWD=""

# Environment variables for MongoDB-01 application
export APP=""
export APP_NAME=""
export MONGO_USER=""
export MONGO_PASSWD=""
export MONGO_CONNECTION=""

# Environment variables for redis DB
export REDIS_HOST=""
export REDIS_PORT=
export REDIS_USER_PASSWD=""
export REDIS_API=""
export REDIS_ENDPOINT=""

# Environment variables for HBNB Project
export HBNB_ENV=""
export HBNB_MYSQL_USER=""
export HBNB_MYSQL_PWD=""
export HBNB_MYSQL_HOST=""
export HBNB_MYSQL_DB=""
export HBNB_TYPE_STORAGE=""
export HBNB_API_PORT=

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

# # If you change repos in lazygit and want your shell to change directory
# # into that repo on exiting lazygit, add this to your ~/.zshrc (or other rc file):

lg()
{
    export LAZYGIT_NEW_DIR_FILE=~/.lazygit/newdir

    lazygit "$@"

    if [ -f $LAZYGIT_NEW_DIR_FILE ]; then
            cd "$(cat $LAZYGIT_NEW_DIR_FILE)"
            rm -f $LAZYGIT_NEW_DIR_FILE > /dev/null
    fi
}

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# >>> Custom Aliases <<<
source ~/.zsh_aliases.sh

# >>> To run pyautogui <<<
export DISPLAY=:0
# xhost +local:

# >>> Pyenv <<<
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# >>> Node NVM <<<
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# >>> Go <<<
export PATH=$PATH:/usr/local/go/bin

# >>> Ruby <<<
# Added by `rbenv init` on Tue Aug 20 11:32:49 PM SAST 2024
eval "$(~/.rbenv/bin/rbenv init - --no-rehash zsh)"

# assuming that rbenv was installed to `~/.rbenv`
FPATH=~/.rbenv/completions:"$FPATH"

autoload -U compinit
compinit

# Clip-View: clip
export PATH=$HOME/.local/bin:$PATH

autoload -Uz compinit
zstyle ':completion:*' menu select
fpath+=~/.zfunc
PATH=~/swift-6.0.1-RELEASE-ubuntu24.04/usr/bin:/home/tafara/swift-6.0.1-RELEASE-ubuntu24.04/usr/bin:/home/tafara/.local/bin:/home/tafara/.rbenv/shims:/home/tafara/.rbenv/bin:/home/tafara/.nvm/versions/node/v22.6.0/bin:/home/tafara/.pyenv/plugins/pyenv-virtualenv/shims:/home/tafara/.pyenv/shims:/home/tafara/.pyenv/bin:/home/tafara/.cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin:/snap/bin:/usr/local/go/bin

# >>> juliaup initialize >>>

# !! Contents within this block are managed by juliaup !!

path=('/home/tafara/.juliaup/bin' $path)
export PATH

# <<< juliaup initialize <<<

# >>> jenv initialize <<<
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"
export PATH=$PATH:$HOME/go/bin
