" auto-install vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
	silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
      	\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
" Plug https://github.com/{everything here}
call plug#begin('~/.config/nvim/autoload/plugged')

Plug 'morhetz/gruvbox'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'mbbill/undotree'

call plug#end()

" PLUGIN CONFIGS
nnoremap <leader>u :UndoTreeToggle<CR>

syntax enable
let g:gruvbox_contrast_dark='hard'
let g:gruvbox_hls_cursor='orange'
set background=dark
colorscheme gruvbox

" key-mappings
let mapleader=","
inoremap jj <Esc> 
nnoremap <leader><space> :nohlsearch<CR>
nnoremap E $
nnoremap B ^
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

set tabstop=4	" number of visual spaces per TAB
set softtabstop=4   " number of spaces in tab when editing 
set expandtab   " tabs are spaces

set showcmd
set wildmenu
set showmatch   " highlight matching [{()}]

set nocompatible
set shortmess+=I
set shortmess+=c
set number
set relativenumber
set laststatus=2
set backspace=indent,eol,start
set hidden
set ignorecase
set smartcase
set incsearch
set hlsearch
nmap Q <Nop> 
set noerrorbells visualbell t_vb=

augroup configgroup
    autocmd!
    autocmd VimEnter * highlight clear SignColumn
    autocmd BufWritePre *.php,*.py,*.js,*.txt,*.hs,*.java,*.md
                \:call <SID>StripTrailingWhitespaces()
    autocmd FileType java setlocal noexpandtab
    autocmd FileType java setlocal list
    autocmd FileType java setlocal listchars=tab:+\ ,eol:-
    autocmd FileType java setlocal formatprg=par\ -w80\ -T4
    autocmd FileType php setlocal expandtab
    autocmd FileType php setlocal list
    autocmd FileType php setlocal listchars=tab:+\ ,eol:-
    autocmd FileType php setlocal formatprg=par\ -w80\ -T4
    autocmd FileType ruby setlocal tabstop=2
    autocmd FileType ruby setlocal shiftwidth=2
    autocmd FileType ruby setlocal softtabstop=2
    autocmd FileType ruby setlocal commentstring=#\ %s
    autocmd FileType python setlocal commentstring=#\ %s
    autocmd FIleType javascript setlocal ts=4 sw=4 sts=0 noexpandtab
    autocmd BufEnter *.cls setlocal filetype=java
    autocmd BufEnter *.zsh-theme setlocal filetype=zsh
    autocmd BufEnter Makefile setlocal noexpandtab
    autocmd BufEnter *.sh setlocal tabstop=2
    autocmd BufEnter *.sh setlocal shiftwidth=2
    autocmd BufEnter *.sh setlocal softtabstop=2
augroup END

" Statusline {{{2

" Statusline definition {{{3
set statusline=                                 " Clear
set statusline+=%1*\                            " Color -
set statusline+=%t                              " Tail of the filename
set statusline+=%2*                             " Color
set statusline+=%h                              " Help file flag
set statusline+=%r                              " Read only flag
set statusline+=%3*                             " Color
set statusline+=%m                              " Modified flag
set statusline+=%=                              " Left/right separator
set statusline+=%4*\                            " Color -
set statusline+=\ \                             " --
set statusline+=%{&filetype}                    " Filetype
set statusline+=\ \                             " --
set statusline+=%{&fenc}                        " File encoding
set statusline+=[%{&ff}]                        " File format
set statusline+=[                               " Indent settings: begin
set statusline+=%{&expandtab?\"sp\":\"tab\"}\   " Indent settings
set statusline+=%{&shiftwidth}                  " Indent settings
set statusline+=]                               " Indent settings: end
set statusline+=\ %5*\ \ \                      " - Color ---
set statusline+=%2c                             " Cursor column
set statusline+=\ \                             " --
set statusline+=%2v                             " Cursor column (virtual)
set statusline+=\ \                             " --
set statusline+=(%l\ /\ %L)                     " Cursor line/total lines
" set statusline+=\ \                             " --
" set statusline+=%P                              " Percent through file

" Statusline colors {{{3
hi User1 ctermfg=250 ctermbg=234
hi User2 ctermfg=008 ctermbg=234
hi User3 ctermfg=143 ctermbg=234
hi User4 ctermfg=237 ctermbg=233
hi User5 ctermfg=238 ctermbg=233

" Window title {{{2
set title               " Change window title to current buffer
set titlestring=%t      " Change window title
