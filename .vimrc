set mouse=a
set number
colorscheme slate

"must have powerline installed
"pip install --user powerline-status
python3 from powerline.vim import setup as powerline_setup
python3 powerline_setup()
python3 del powerline_setup

:set laststatus=2
