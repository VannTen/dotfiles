source /usr/share/git/git-prompt.sh
PROMPT_COMMAND='__git_ps1 "[\u@\h \w]" "\\\$ "'
PROMPT_COMMAND="$PROMPT_COMMAND; history -a"
GIT_PS1_SHOWCOLORHINTS=1
GIT_PS1_SHOWDIRTYSTATE=1
GIT_PS1_SHOWUPSTREAM=auto
