export LANG="en_US.UTF-8"
export PATH=/home/wolf/scripts:$PATH

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

autoload -Uz compinit promptinit vcs_info zcalc
compinit
promptinit
prompt walters
setopt no_prompt_cr # no automatic carriage return
# End of lines added by compinstall

# Show git info in prompt ᚠ
precmd() { vcs_info }
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' unstagedstr '!'
zstyle ':vcs_info:*' stagedstr '+'
zstyle ':vcs_info:git:*' formats ' %F{yellow}(%b)%f%F{red}%u%c%f'
setopt prompt_subst
PROMPT='%n@%U%M%u${vcs_info_msg_0_}> '

export PREFIX="$HOME/opt/cross"
export TARGET=i686-elf
export PATH="$PREFIX/bin:$PATH"

# Exercism zsh completions
if [ -f ~/.config/exercism/exercism_completion.zsh ]; then
	source ~/.config/exercism/exercism_completion.zsh
fi

export PATH=~/bin:~/.local/bin:$PATH
setopt COMPLETE_ALIASES
zstyle ':completion:*' menu select
zstyle ':completion:*' rehash true
ttyctl -f

# Dirstack
DIRSTACKFILE="$HOME/.cache/zsh/dirs"
if [[ -f $DIRSTACKFILE ]] && [[ $#dirstack -eq 0 ]]; then
  dirstack=( ${(f)"$(< $DIRSTACKFILE)"} )
  [[ -d $dirstack[1] ]] && cd $dirstack[1]
fi

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

# Powerlevel9K config
POWERLEVEL9K_MODE='awesome-fontconfig'
#POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR=$'\uE0B1'
#POWERLEVEL9K_RIGHT_SEGMENT_SEPARATOR=$'\uE0B3'

# Advanced `vcs` color customization
#POWERLEVEL9K_VCS_CLEAN_FOREGROUND='blue'
#POWERLEVEL9K_VCS_CLEAN_BACKGROUND='black'
#POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND='yellow'
#POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND='black'
#POWERLEVEL9K_VCS_MODIFIED_FOREGROUND='red'
#POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='black'

#POWERLEVEL9K_OS_ICON_BACKGROUND="white"
#POWERLEVEL9K_OS_ICON_FOREGROUND="blue"
#POWERLEVEL9K_DIR_HOME_FOREGROUND="white"
#POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND="white"
#POWERLEVEL9K_DIR_DEFAULT_FOREGROUND="white"

# Zsh syntax highlighting
if [ -f /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]; then
	source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi

