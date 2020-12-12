syntax on

set number 
set wildmenu
set hlsearch
set incsearch
set ignorecase
set smartcase
set cursorline
set backspace=2
set nrformats=
set autoindent

" autocmd vimenter * NERDTree

let mapleader=','
noremap = nzz
noremap - Nzz
inoremap jj <Esc>`^


" map s :w<CR>
map Q :q<CR>
map R :source $MYNVIMRC<CR>
map <C-n> :NERDTreeToggle<CR>
inoremap <Leader><CR> :nohls<CR>
noremap <C-f> <C-f>zz
noremap <C-u> <C-u>zz

nmap <Leader><Tab> <Plug>(fzf-maps-n)
xmap <Leader><Tab> <Plug>(fzf-maps-x)
omap <Leader><Tab> <Plug>(fzf-maps-o)

imap <C-x><C-k> <Plug>(fzf-complete-word)
imap <C-x><C-f> <Plug>(fzf-complete-path)
imap <C-x><C-l> <Plug>(fzf-complete-line)

nnoremap <silent><Leader>w :write<CR>
nnoremap <Leader>d :NERDTreeFind<CR>
nnoremap <Leader>f :Files<CR> 
nnoremap <Leader>b :Buffers<CR>
nnoremap <Leader>t :TagbarToggle<CR>
nnoremap <Leader>a :Ag<CR> 


nnoremap <C-h> <C-w><C-h>
nnoremap <C-l> <C-w><C-l>
nnoremap <C-j> <C-w><C-j>
nnoremap <C-k> <C-w><C-k> 

nmap ss <Plug>(easymotion-s2)
let NERDTreeShowHidden=1

let NERDTreeIgnore=[
	\ '\.git$','\.hg$','\.svn$','\.pyc$','\.swp$',
	\ ]

call plug#begin('~/.vim/plugged')
Plug 'mhinz/vim-startify'
Plug 'Yggdroot/indentLine'
Plug 'vim-airline/vim-airline'
Plug 'connorholyday/vim-snazzy'
Plug 'iamcco/markdown-preview.vim',{'do':{ ->mkdp#util#install()},'for':['markdown','vim-plug']}
Plug 'preservim/nerdtree'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-surround'
Plug 'junegunn/fzf',{ 'dir' : '~/.fzf','do': './install --all'}
Plug 'junegunn/fzf.vim'
Plug 'brooth/far.vim'
Plug 'fatih/vim-go',{ 'do' : ':GoUpdateBinaries'}
Plug 'majutsushi/tagbar'
Plug 'lfv89/vim-interestingwords'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/gv.vim'
call plug#end()

" 设置 git 状态刷新时间 毫秒
set updatetime=100
color snazzy
