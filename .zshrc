# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt extendedglob
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/rysie/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# OK, here's where Ryan is getting his customisation on

# set the prompt with some nice colours apparently the supported ones are:
#   red, blue, green, cyan, yellow, magenta, black & white
#
# for more info see:
#   http://stackoverflow.com/questions/689765/how-can-i-change-the-color-of-my-prompt
autoload -U colors && colors

PROMPT="%{$fg[green]%}%n@%m%{$reset_color%} %# "
RPROMPT="%~"

# lets try to get different cursors showing depending on whether we're
# in normal or insert mode on the command line (ie when using zsh's vi mode)

#zle-keymap-select () {
#  case $KEYMAP in
#    vicmd) print -rn -- $terminfo[cvvis];; # block cursor
#    viins|main) print -rn -- $terminfo[cnorm];; # less visible cursor
#  esac
#}

function zle-line-init zle-keymap-select {
  case $KEYMAP in
    vicmd) RPS1="-- NORMAL --";;
    main|viins) RPS1="-- INSERT --";;
  esac

  RPS2=$RPS1
  zle reset-prompt
}

zle -N zle-line-init
#zle -N zle-keymap-select




alias vi=vim

