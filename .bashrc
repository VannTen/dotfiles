#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

for file in ~/.config/bash/*.bash
do
	source $file
done

alias ls='ls --color=auto'


export GHCUP_USE_XDG_DIRS=1
[ -f "/home/max/.local/share/ghcup/env" ] && source "/home/max/.local/share/ghcup/env" # ghcup-env
