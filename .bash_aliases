alias vnc="vncserver -geometry 1920x1080 -depth 24 -dpi 120 -localhost no :1"
alias kvnc="vncserver -kill :1"
alias vncviewer="vncviewer -geometry 1920x990"

alias ll="ls -l"
function lsnew { ls -lt "$@" | head -n 30; }

alias grep="egrep --color"
alias gri="grep -i"
alias watch="watch -n 1"

alias htop="htop -d 10"
alias hi="history | tail -n 30"
alias ssh="ssh -X"
alias cal="ncal -Mb"
alias sendme="sendmail rnespor@gmail.com"

function psag {
    PATTERN="$1"
    shift
    PIDS=`ps -ww -o user,pid,ppid,%cpu,%mem,vsize,rssize,nlwp,stat,start_time,time,cmd -e | grep "$PATTERN" | tr -s ' '  | cut -f 2 -d ' ' | grep -v PID | xargs`
    if [ "$PIDS" != "" ]; then
        ps -ww -o user,pid,ppid,%cpu,%mem,vsize,rssize,nlwp,stat,start_time,time,cmd -p "$PIDS"
    fi
}
function psg { psag "$1" -u nespor ; }
alias psmostthreads="ps -eo user,pid,ppid,%cpu,%mem,vsize,rssize,nlwp,stat,start_time,time,cmd --sort=-nlwp --width=180 | head -n 30"

function fn {
    find -name "*$1*"
}

OLD_VIM=`which vim`
function vim() {
    if [[ $1 == - ]]; then
        $OLD_VIM +"set bt=nowrite" $@
    else
        $OLD_VIM $@
    fi
}

alias gst="git status"
alias gp="git pull"
alias gch="git checkout"

alias vista-rdesktop="rdesktop -u Radek -p Radek -r sound:local -r clipboard:CLIPBOARD -5 -g 1680x1050 localhost"

