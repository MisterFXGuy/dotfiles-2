"+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
"
"				Vundle	
"+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
set nocompatible
set backspace=2
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'valloric/YouCompleteMe'
call vundle#end()
filetype plugin indent on  
"+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
"				VimPlug	
"+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
call plug#begin('~/.vim/plugged')

" LaTeX Plugins
Plug 'lervag/vimtex'

" Colour Schemes
Plug 'jacoborus/tender'
Plug 'morhetz/gruvbox'

" Airline
Plug 'itchyny/lightline.vim'
Plug 'shinchu/lightline-gruvbox.vim'

"CtrlP search
Plug 'kien/ctrlp.vim'

" Supertab
Plug 'ervandew/supertab' 

"UltiSnips
Plug 'SirVer/ultisnips'

" NerdTree
Plug 'scrooloose/nerdtree'

" Emmet-Vim
Plug 'mattn/emmet-vim'

" Snippets
Plug 'honza/vim-snippets'

" YCM Generator
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable'}

"Markdown preview generator
Plug 'JamshedVesuna/vim-markdown-preview'

call plug#end()
"+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
"				General	
"+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
set nocompatible
syntax on
imap jk <Esc>
imap <C-c> /**/jkhha
"Tab bindings
nnoremap <C-t> :tabnew<CR>
inoremap <C-t> <Esc>:tabnew<CR>
set noswapfile
nnoremap <C-h> :tabprevious<CR>
nnoremap <C-l> :tabnext<CR>
nmap <S-Enter> O<Esc>
nmap <CR> o<Esc>
command! W w
command! Wq wq
command! WQ wq
command! Q q
let mapleader=","

"+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
"			    Spaces / Tabs	
"+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
set exrc    "These two are for C
set secure
set colorcolumn=120
highlight ColorColumn ctermbg= gray
set tabstop=2       " number of visual spaces per TAB
set softtabstop=2   " Number of spaces when TAB is pressed
set shiftwidth=2
set expandtab 	" Converts tabs into spaces
set smartindent
set autoindent
set nopaste 
"+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
"				   UI	
"+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
set clipboard=unnamedplus
set cursorline
set number
filetype indent on
set lazyredraw
set showmatch
nnoremap j gj
nnoremap k gk
" move to beginning/end of line
nnoremap B ^
nnoremap E $
" $/^ doesn't do anything
nnoremap $ <nop>
nnoremap ^ <nop>
nnoremap <Space> za
map <c-S-f> mzgg=G`z

"+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
"				 Colours	
"+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
set t_Co=256
colorscheme gruvbox
set background=dark
"+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
"				 lightline	
"+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
set laststatus=2
" set lighline theme
let g:lightline = {}
let g:lightline.colorscheme = 'gruvbox'
"+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
"				 CtrlP	
"+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
let g:ctrlp_map = '<c-p>'

"+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
"		          Syntastic Settings	
"+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

"+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
"			       NerdTree
"+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>
let NERDTreeMapOpenInTab='<ENTER>'
let NERDTreeQuitOnOpen=1
"+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
"			       Searching	
"+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
set incsearch           " search as characters are entered
set hlsearch " highlight matches
"+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
"			         YCM	
"+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_collect_identifiers_from_tags_files = 1 " Let YCM read tags from Ctags file
let g:ycm_use_ultisnips_completer = 1 " Default 1, just ensure
let g:ycm_seed_identifiers_with_syntax = 1 " Completion for programming language's keyword
let g:ycm_complete_in_comments = 1 " Completion in comments
let g:ycm_complete_in_strings = 1 " Completion in string

" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'
"+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
"			         NERDTree	
"+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
let NERDTreeMapOpenInTab='<ENTER>'
"+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
"			         UltiSnps	
"+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
"+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
"			         VimTex	
"+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
let g:vimtex_latexmk_continuous=1
let g:vimtex_viewer_mupdf=1
"+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
"			         Markdown Preview	
"+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
let vim_markdown_preview_hotkey='<C-m>'
