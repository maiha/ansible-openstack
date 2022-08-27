# Set up the prompt

autoload -Uz promptinit
promptinit
#prompt adam1

setopt histignorealldups sharehistory

# Use emacs keybindings even if our EDITOR is set to vi
bindkey -e

# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=100000
SAVEHIST=100000
HISTFILE=~/.zhistory

# Use modern completion system
autoload -Uz compinit
compinit

zstyle ':prezto:module:utility' safe-ops 'no'
zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2
eval "$(dircolors -b)"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true

zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'

### Overwritten by Supership

export LANG=ja_JP.UTF-8

case ${USERNAME} in
'root')
  export PS1="%B%F{red}%n%f%F{yellow}@%m%f:%B%F{blue}%~%f%b$ "
  ;;
'ubuntu')
  export PS1="%B%F{yellow}%n@%m%f:%B%F{blue}%~%f%b$ "
  ;;
*)
  export PS1="%B%F{green}%n%f%F{yellow}@%m%f:%B%F{blue}%~%f%b$ "
  ;;
esac

export DIRSTACKSIZE=100
export HISTSIZE=10000
export SAVEHIST=100000

setopt AUTO_CD AUTO_PUSHD
setopt HIST_IGNORE_DUPS
setopt EXTENDED_HISTORY
setopt share_history
setopt hist_ignore_all_dups
setopt hist_ignore_space
setopt hist_verify
setopt hist_reduce_blanks  
setopt hist_save_no_dups
setopt hist_no_store
setopt hist_expand
setopt inc_append_history

bindkey '^p' history-beginning-search-backward
bindkey '^n' history-beginning-search-forward

alias c='crystal'
alias cx='chmod +x'
alias d='docker'
alias dc='docker compose'
alias f='find . -name '
alias l='lv -c'
alias la='ls -a'
alias ll='ls -lh'
alias lla='ll -a'
alias ls='ls --group-directories-first --color=auto'
alias pd='popd'
alias remove-ansi-color='sed -r "s:\x1B\[[0-9;]*[mK]::g"'

