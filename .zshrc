# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="dracula"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="yyyy-mm-dd"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-syntax-highlighting zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# Enabling Color Prompts
autoload colors zsh/terminfo
colors

# Autostart Tmux
if [ "$TMUX" = "" ]; then tmux; fi

# Spellcheck / Typo Correction
setopt correctall

# rbenv
eval "$(rbenv init -)"

# rbenv
eval "$(nodenv init -)"

# jenv
eval "$(jenv init -)"

# alias
alias zipbob_web="ssh deploy@www.zipbob.net"
alias landbook_web="ssh deploy@www.landbook.net"
alias itdaa_web="ssh deploy@www.itdaa.net"
alias 42lab_web="ssh deploy@www.42lab.co.kr"

alias vi="/usr/local/bin/vim"
alias tmux="TERM=screen-256color-bce tmux"
alias crit="cordova run ios --target='iPhone-6s, 9.3'"
alias ctags_rails="ctags -R --exclude=.git --exclude=log --exclude=coverage --exclude=node_modules --exclude=frontend/dist --exclude=frontend/node_modules --exclude=frontend/platforms --exclude=frontend/plugins --exclude=frontend/bower_components --exclude=frontend/src/vendor *"
alias generate_random_password="openssl rand -base64 16"
