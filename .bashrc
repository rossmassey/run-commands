# STUFF I HAVE ADDED 

# for WSL, gets rid of ugly green windows folder highlights 
LS_COLORS=$LS_COLORS:'ow=1;34:' && export LS_COLORS

# must have powerline-go installed, and the terminal set to a powerline font
# i.e. Cascadia Code PL
GOPATH=/opt/go
function _update_ps1() {
    PS1="\n$($GOPATH/bin/powerline-go -modules time,venv,user,host,ssh,cwd,perms,git,hg,jobs,exit -colorize-hostname -newline)"
}
if [ "$TERM" != "linux" ] && [ -f "$GOPATH/bin/powerline-go" ]; then
    PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
fi

alias py="python3"
alias python="python3"
alias pip="pip3"
alias ls="ls --color=tty 2> >(grep -v 'ls: cannot read symbolic link.*Permission denied')"
