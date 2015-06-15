HIST_STAMPS="mm/dd/yyyy"

source $HOME/.zsh/alias.zsh
source $HOME/.zsh/setopt.zsh

export GDK_USE_XFT=1
export _JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=on -Dswing.aatext=true -Dswing.defaultlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel'

autoload -Uz compinit
compinit
zstyle ':completion:*:default'         list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' menu select
zstyle '*:processes-names' command 'ps -e -o comm='
zstyle ':completion:*:warnings' format '%BSorry, no matches for: %d%b'
zstyle ':completion:*' file-sort modification reverse
zstyle ':completion:*:correct:*'       original true

autoload -U colors && colors

zstyle ':completion:*:history-words'   menu yes
zstyle ':completion:*'                 matcher-list 'm:{a-z}={A-Z}' 

autoload up-line-or-beginning-search
autoload down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search

export EDITOR=vim

bindkey "^[[H" beginning-of-line
bindkey "^[[F" end-of-line
bindkey "^[[3~" delete-char
bindkey "^[[5~" up-line-or-history
bindkey "^[[6~" down-line-or-history
bindkey "\e[A" up-line-or-beginning-search
bindkey "\e[B" down-line-or-beginning-search

eval $(dircolors ~/.dircolors)
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=$HISTSIZE

PROMPT="%{$fg[blue]%}%n%{$reset_color%}@%{$reset_color%}%m %{$fg_no_bold[white]%}%~ %{$reset_color%}%# "
RPROMPT="[%{$fg_no_bold[red]%}%?%{$reset_color%}]"

