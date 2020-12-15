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
set scrolloff=5
" autocmd vimenter * NERDTree

let mapleader=','
noremap = nzz
noremap - Nzz
inoremap jj <Esc>`^

" map s :w<CR>
map Q :q<CR>
map R :source $MYNVIMRC<CR>
map <C-n> :NERDTreeToggle<CR>
map <Leader>sc :set spell!<CR>
inoremap <Leader><CR> :nohls<CR>
nnoremap <Leader><CR> :nohls<CR>
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
Plug 'tpope/vim-surround'
Plug 'junegunn/fzf',{ 'dir' : '~/.fzf','do': './install --all'}
Plug 'junegunn/fzf.vim'
Plug 'brooth/far.vim'
Plug 'fatih/vim-go',{ 'for': ['go','vim-plug'], 'tag': '*' }
Plug 'majutsushi/tagbar'
Plug 'lfv89/vim-interestingwords'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/gv.vim'
Plug 'neoclide/coc.nvim',{'branch':'release'}
call plug#end()

" 设置 git 状态刷新时间 毫秒
set updatetime=100
color snazzy

" === coc
let g:coc_global_extensions = [
	\ 'coc-json',
	\ 'coc-explorer',
	\ 'coc-vetur',
	\ 'coc-tsserver',
	\ 'coc-marketplace',
	\ 'coc-yaml',
	\ 'coc-word',
	\ 'coc-vimlsp',
	\ 'coc-translator',
	\ 'coc-toml',
	\ 'coc-rainbow-fart',
	\ 'coc-html',
	\ 'coc-highlight',
	\ 'coc-gitignore',
	\ 'coc-fzf-preview',
	\ 'coc-format-json',
	\ 'coc-docker',
	\ 'coc-css',
	\ 'coc-phpls',
	\ 'coc-prettier',
	\ ]
set hidden 

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-n>"
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-o> coc#refresh()
endif
" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction


" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')


" end coc

