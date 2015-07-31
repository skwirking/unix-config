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
#   http://stackoverflow.com/questions/689765/how-can-i-change-the-color
autoload -U colors && colors

PROMPT="%{$fg[green]%}%n@%m%{$reset_color%} %# "
RPROMPT="%~"


# use a bar cursor when command line is vi insert mode; block cursor otherwise
# assumes $TERM = xterm, which is the case for cygwin's mintty
function zle-line-init zle-keymap-select {
  case $KEYMAP in
    vicmd) echo -en "\x1b[\x32 q";;       # bar cursor
    main|viins) echo -en "\x1b[\x36 q";;  # block cursor
  esac
}

# use the above function as the implementation for these two zle widgets
# yes, it's a little confusing because the function has the same name as 
# the widgets.
zle -N zle-line-init
zle -N zle-keymap-select




alias vi=vim

