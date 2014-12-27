set nocompatible

"Enable file type detection
filetype plugin indent on

"set default tabing
set ts=4 sts=4 sw=4 noexpandtab

if has("autocmd")

  autocmd bufwritepost .vimrc source $MYVIMRC

  " Syntax of these languages is fussy over tabs Vs spaces
  autocmd FileType make setlocal ts=8 sts=8 sw=8 noexpandtab
  autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

  " Customisations based on house-style (arbitrary)
  autocmd FileType html setlocal ts=2 sts=2 sw=2 expandtab
  autocmd FileType css setlocal ts=2 sts=2 sw=2 expandtab
  autocmd FileType javascript setlocal ts=4 sts=4 sw=4 noexpandtab
  autocmd FileType .vimrc setlocal ts=2 sts=2 sw=2 noexpandtab

endif

command! -nargs=* Wrap set wrap linebreak nolist

syntax enable

set hidden " Allow for hidden buffers
set nu " show line numbers
set incsearch " highlight as you search
set ignorecase "ingore case when searching"

" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:▸\ ,eol:¬,trail:$

set guioptions-=r "remove right scroll bar
set guioptions-=L "remove left scroll bar
"set guioptions-=m "remove menu bar
"set guioptions-=T "remove toolbar

set sessionoptions +=winpos
set sessionoptions +=resize

set backspace=indent,eol,start

set formatprg=par\ -w80

" vanilla key remappings
vmap < <gv
vmap > >gv

nmap j gj
nmap k gk

nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l

" ------------------------------ plugin -------------------------------------

execute pathogen#infect()

" colorscheme settings
let g:kolor_italic=1                    " Enable italic. Default: 1
let g:kolor_bold=1                      " Enable bold. Default: 1
let g:kolor_underlined=0                " Enable underline. Default: 0
let g:kolor_alternative_matchparen=0    " Gray 'MatchParen' color. Default: 0
colorscheme kolor

" statusline options
set laststatus=2

" delimitmate settings
let delimitMate_expand_cr = 1
let delimitMate_expand_space=1

nmap <C-n> :NERDTreeToggle<CR> " toggle nerd tree maping
