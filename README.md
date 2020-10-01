# Set up terminals

## Change computer name

Settings ▸ System ▸ About ▸ Rename this PC

## Install Cascadia Powerline font

https://github.com/microsoft/cascadia-code/issues/10

## Get Go

`sudo apt install golang-go`

`sudo mv go /etc`

## Add powerline-go and ls colors

In `~/.profile` add at the end:

```
LS_COLORS=$LS_COLORS:'ow=1;34:' && export LS_COLORS

GOPATH=/etc/go/
function _update_ps1() {
  PS1="\n💻$($GOPATH/bin/powerline-go -modules time,venv,user,ssh,cwd,perms,git,hg,jobs,exit -colorize-hostname -newline)"
}

if [ "$TERM" != "linux" ] && [ -f "$GOPATH/bin/powerline-go" ]; then
  PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
fi
```

## Add .vimrc

Install powerline status:

`pip install --user powerline-status`

Add to `~./vimrc`
```
set mouse=a
set number
colorscheme slate

python3 from powerline.vim import setup as powerline_setup
python3 powerline_setup()
python3 del powerline_setup

:set laststatus=2
```