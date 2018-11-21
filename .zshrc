# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory autocd extendedglob nomatch notify
unsetopt beep
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/wolf/.zshrc'

autoload -Uz compinit promptinit
compinit
# Completion for kitty
kitty + complete setup zsh | source /dev/stdin
promptinit
prompt walters
# End of lines added by compinstall

export PREFIX="$HOME/opt/cross"
export TARGET=i686-elf
export PATH="$PREFIX/bin:$PATH"

if [ -f ~/.config/exercism/exercism_completion.zsh ]; then
	source ~/.config/exercism/exercism_completion.zsh
fi

export PATH=~/bin:~/.local/bin:$PATH
setopt COMPLETE_ALIASES
zstyle ':completion:*' menu select
zstyle ':completion:*' rehash true
ttyctl -f
prompt walters

# Dirstack
DIRSTACKFILE="$HOME/.cache/zsh/dirs"
if [[ -f $DIRSTACKFILE ]] && [[ $#dirstack -eq 0 ]]; then
  dirstack=( ${(f)"$(< $DIRSTACKFILE)"} )
  [[ -d $dirstack[1] ]] && cd $dirstack[1]
fi
chpwd() {
  print -l $PWD ${(u)dirstack} >$DIRSTACKFILE
}

DIRSTACKSIZE=20

setopt AUTO_PUSHD PUSHD_SILENT PUSHD_TO_HOME

## Remove duplicate entries
setopt PUSHD_IGNORE_DUPS

## This reverts the +/- operators.
setopt PUSHD_MINUS

# Alias
alias ls='ls --color=auto'
alias l='ls -CF'
alias ll='ls -al'
alias ta='tmux attach -t '
alias tn='tmux new -s '
alias upgrade='sudo pacman -Syu '
alias install='sudo pacman -S '
alias remove='sudo pacman -Rns '
alias vim=nvim

source ~/opt/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
