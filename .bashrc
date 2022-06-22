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
PS1='[\u@\h $(kube_ps1) \W]\$ '

PATH=${HOME}/opt/bin/:${PATH}
