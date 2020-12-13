let mapleader = " "
set encoding=utf-8
set termencoding=utf-8
set autoindent
set cindent
set smartindent
set nocompatible
set backspace=indent,eol,start
set history=200
set ruler
set showcmd
set wildmenu
set wildmode=longest:list,full
set ttimeout
set ttimeoutlen=100
set updatetime=100
set display=truncate
set scrolloff=5
set nrformats-=octal
set t_Co=256
set nobackup
set nowritebackup
set noswapfile
set ignorecase
set smartcase
set nohlsearch
set incsearch
set laststatus=2
set clipboard=unnamed
" set relativenumber
set expandtab
set background=light
" set cursorline

" paste mode
nnoremap <F5> :set invpaste paste?<CR>
set pastetoggle=<F5>
set showmode

" Treat long lines as break lines
map j gj
map k gk

" syntax enable
" filetype plugin indent on

call plug#begin('~/.vim/plugged')
"Plug 'SirVer/ultisnips'
"Plug 'honza/vim-snippets'
"Plug 'skywind3000/asyncrun.vim'
"Plug 'vim-test/vim-test'
"Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'lotabout/skim', { 'dir': '~/.skim', 'do': './install' }
Plug 'lotabout/skim.vim'
Plug 'preservim/tagbar'
Plug 'tpope/vim-commentary'
"Plug 'tpope/vim-fugitive'
Plug 'altercation/vim-colors-solarized'
"Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'
"Plug 'airblade/vim-gitgutter'
"Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()
syntax off


"let g:airline_powerline_fonts = 1
"let g:airline_highlighting_cache = 1

nnoremap <silent><leader>s :Snippets<CR>
nnoremap <silent><leader>l :Buffers<CR>
nnoremap <silent><leader>\ :vs<CR>
nnoremap <silent><leader>/ :split<CR>
nnoremap <silent><leader>w :w!<CR>
nnoremap <silent><leader>q :q!<CR>
nnoremap <silent><leader>2 :e ~/.vimrc<CR>
nnoremap <silent><leader>1 :source ~/.vimrc \| :PlugInstall<CR>
nnoremap <leader>rv :set relativenumber!<cr>

set rtp+=~/.fzf
nnoremap <C-p> :GFiles<Cr>
let g:fzf_action = {
	\ 'ctrl-t': 'tab split',
	\ 'ctrl-i': 'split',
	\ 'ctrl-v': 'vsplit'}
nnoremap <C-g> :Rg<Cr>

" nnoremap <silent><leader>e :Exp<CR><CR>

nnoremap <c-h> <c-w>h
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l

" nmap <F6> :NERDTreeToggle<CR>
nmap <F7> :TagbarToggle<CR>

autocmd BufWritePre * :%s/\s\+$//e

" [Tags] Command to generate tags file
let g:fzf_tags_command = 'ctags -R'
let g:tagbar_ctags_bin = 'ctags'

command! -bang -nargs=* Ag call fzf#vim#ag_interactive(<q-args>, fzf#vim#with_preview('right:50%:hidden', 'alt-h'))
command! -bang -nargs=* Rg call fzf#vim#rg_interactive(<q-args>, fzf#vim#with_preview('right:50%:hidden', 'alt-h'))


"""""""
"" Coc
"""""""
"" Set completeopt to have a better completion experience
"set completeopt=menuone,noinsert,noselect
"
"" Avoid showing extra messages when using completion
"set shortmess+=c
"
"" Code navigation
"nmap <silent> gd <Plug>(coc-definition)
"nmap <silent> gy <Plug>(coc-type-definition)
"nmap <silent> gi <Plug>(coc-implementation)
"nmap <silent> gr <Plug>(coc-references)
"
"" Trigger completion with <tab>
"" found in :help completion
"function! s:check_back_space() abort
"    let col = col('.') - 1
"    return !col || getline('.')[col - 1]  =~ '\s'
"endfunction
"
"" inoremap <silent><expr> <TAB>
""   \ pumvisible() ? "\<C-n>" :
""   \ <SID>check_back_space() ? "\<TAB>" :
""   \ completion#trigger_completion()
"
"inoremap <silent><expr> <TAB>
"      \ pumvisible() ? coc#_select_confirm() :
"      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
"      \ <SID>check_back_space() ? "\<TAB>" :
"      \ coc#refresh()
"
"
"" Goto previous/next diagnostic warning/error
"nmap <silent> [g <Plug>(coc-diagnostic-prev)
"nmap <silent> ]g <Plug>(coc-diagnostic-next)
"
"" Use K to show documentation in preview window.
"nnoremap <silent> K :call <SID>show_documentation()<CR>
"
"function! s:show_documentation()
"  if (index(['vim','help'], &filetype) >= 0)
"    execute 'h '.expand('<cword>')
"  else
"    call CocActionAsync('doHover')
"  endif
"endfunction
"
""""
"" Coc snippets
""""
"" Use <C-l> for trigger snippet expand.
"imap <C-l> <Plug>(coc-snippets-expand)
"
"" Use <C-j> for select text for visual placeholder of snippet.
"vmap <C-j> <Plug>(coc-snippets-select)
"
"" Use <C-j> for jump to next placeholder, it's default of coc.nvim
"let g:coc_snippet_next = '<c-j>'
"
"" Use <C-k> for jump to previous placeholder, it's default of coc.nvim
"let g:coc_snippet_prev = '<c-k>'
"
"" Use <C-j> for both expand and jump (make expand higher priority.)
"imap <C-j> <Plug>(coc-snippets-expand-jump)
"
"" Use <leader>x for convert visual selected code to snippet
"xmap <leader>x  <Plug>(coc-convert-snippet)

" these "Ctrl mappings" work well when Caps Lock is mapped to Ctrl
nmap <silent> t<C-n> :TestNearest<CR>
nmap <silent> t<C-f> :TestFile<CR>
nmap <silent> t<C-s> :TestSuite<CR>
nmap <silent> t<C-l> :TestLast<CR>
nmap <silent> t<C-g> :TestVisit<CR>

" make test commands execute using dispatch.vim
" let test#strategy = "asyncrun_background_term"
