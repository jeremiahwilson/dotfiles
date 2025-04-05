export PATH=/opt/homebrew/bin:$PATH

# NVM: Node Version Manager
export NVM_DIR="$HOME/.nvm"
[ -s "$(brew --prefix)/opt/nvm/nvm.sh" ] && \. "$(brew --prefix)/opt/nvm/nvm.sh"
[ -s "$(brew --prefix)/opt/nvm/etc/bash_completion.d/nvm" ] && \. "$(brew --prefix)/opt/nvm/etc/bash_completion.d/nvm"

# zinit plugin/package manager
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"
# download zinit if we don't have it
if [ ! -d "$ZINIT_HOME" ]; then
  mkdir -p "$(dirname $ZINIT_HOME)"
  git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi
# source/load zinit
source "${ZINIT_HOME}/zinit.zsh"

# plugins
zinit light Aloxaf/fzf-tab
zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions
autoload -U compinit %% compinit # load the completions
# zinit light zsh-users/zsh-autosuggestions

# general config
export XDG_CONFIG_HOME="$HOME/.config"
alias vim='nvim'
alias ls='ls --color'
EDITOR='nvim'

# command history
HISTSIZE=5000
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space # put a space before any command to prevent it from writing to history
setopt hist_ignore_all_dups
setopt hist_ignore_dups
setopt hist_save_no_dups
setopt hist_find_no_dups
bindkey '^[[A' history-search-backward # if you have a command typed out, up arrow will only search history for that command
bindkey '^[[B' history-search-forward # ditto but forward
bindkey '^J' history-search-backward # if you have a command typed out, up arrow will only search history for that command
bindkey '^K' history-search-forward # ditto but forward

# autocomplete stuff
# zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}' # removes case sensitivity from autocomplete
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}" # color autocomplete
zstyle ':completion:*' menu no # not needed with fzf-tab plugin
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'ls --color $realpath' # preview window for fzftab 

# Evals
eval "$(fzf --zsh)"
eval "$(zoxide init zsh)"
if [ "TERM_PROGRAM" != "Apple_Terminal" ]; then 
  # precmd() { print "" } # line break before the omp prompt
  eval "$(oh-my-posh init zsh --config $HOME/.config/ohmyposh/star-modified.toml)" # Modified star theme
  # eval "$(oh-my-posh init zsh --config $(brew --prefix oh-my-posh)/themes/star.omp.json)" # Default star theme
fi
