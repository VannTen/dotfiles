HISTCONTROL="ignoreboth"
HISTSIZE=10000000
HISTFILESIZE="" # Disable history file cleanup
HISTTIMEFORMAT="%F %T  " # Timestamps in history file

shopt -s histappend
shopt -s cmdhist

bind '"\e[B": history-search-forward'   # instead of just walking the history,
bind '"\e[A": history-search-backward'  # perform a search on <UP>/<DOWN>
