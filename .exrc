" indentation
set tabstop=8
set autoindent wrapmargin=8
set wraplen=72
set shiftwidth=8

" visuals
set nu
set nomesg
set showmode
set showmatch
set matchtime=3
set ruler
set verbose
set leftright
set extended
set iclower
set searchincr
set report=1
" set filec=\ 
set cedit=
map! i 

" common
map gg 1G
map gb :!cp % %.bak
map gw :w!
map gq :q!

" tmux integration
map gv :!fzffv
map gh :!fzffh
map gn :!fzffn

" copy/paste
map gp :r!xclip -o -selection clipboard
map gy :'m,'k!xclip -sel clip && xclip -o -selection clip

map gY !'mtmux load-buffer -u
map gP :r!tmux show-buffer

" formating
map gc :!cargo clippy
map gf :!cargo fmt
map gt :%s/ *$//
map gJ :%!jq '.'
