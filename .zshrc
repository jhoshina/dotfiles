bindkey -e

autoload -U colors
colors

if [[ "$PS1" != "" ]]; then
  PROMPT=%{$terminfo[bold]%}%(!.%{$fg[red]%}.%{$fg[green]%})'%n@%m'%{$reset_color%}%{$fg[blue]%}'%(!.#.%%) '%{$reset_color%}
  RPROMPT=%{$terminfo[bold]$fg[blue]%}'[%~]'%{$reset_color%}
fi
precmd() {
  RPROMPT=%{$terminfo[bold]%(?.$fg[blue].$fg[red])%}'[%~]'%{$reset_color%}
}

autoload -Uz vcs_info

zstyle ':vcs_info:*' formats '[%b]'
zstyle ':vcs_info:*' actionformats '[%b|%a]'
precmd () {
  psvar=()
  LANG=en_US.UTF-8 vcs_info
  [[ -n "$vcs_info_msg_0_" ]] && psvar[1]="$vcs_info_msg_0_"
}

RPROMPT="%1(v|%F{green}%1v%f|)"

setopt auto_cd

setopt auto_pushd

setopt correct

setopt list_packed

#setopt noautoremoveslash

HISTFILE=$HOME/.zsh-history
HISTSIZE=100000
SAVEHIST=100000
function history-all { history -E 1 }
setopt extended_history
setopt share_history

fpath=($HOME/.zsh/functions/Completion $fpath)
autoload -U compinit
compinit

case "${OSTYPE}" in
darwin*|freebsd*)
  alias ls='ls -G'
  ;;
linux*)
  alias ls='ls --color=auto'
  ;;
esac

if type anyenv > /dev/null ; then
  eval "$(anyenv init -)"
fi


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

