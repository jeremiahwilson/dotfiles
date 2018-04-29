# Jeremiah Wilson
# jeremiah.james.wilson@gmail.com


# Config
export ZSH=/Users/jeremiah/.oh-my-zsh # Path to oh-my-zsh installation.
export PATH=$HOME/bin:/usr/local/bin:$PATH # Updating $PATH after coming from bash
export UPDATE_ZSH_DAYS=7 # Update every 7 days
export EDITOR='vim'

# Appearance
ZSH_THEME="jnrowe"
export TERM=screen-256color # Adds 256 color support for tmux
COMPLETION_WAITING_DOTS="true" # Display red dots while waiting for completion

# Aliases
alias mupdf='mupdf-gl' # Necessary for mupdf to run
alias gvim='mvim'

# Plugins
plugins=(
  git
  brew
  osx
  python
  tmux
  vi-mode
  web-search
  wd
)

source $ZSH/oh-my-zsh.sh

# Add RVM to PATH for scripting. This must be the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
