set nocompatible              " be iMproved, required

filetype off                  " required

" Sets the runtime path to include Vundle and initialize:

set rtp+=~/.vim/bundle/Vundle.vim

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Plugins

call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-fugitive'

Plugin 'airblade/vim-gitgutter'

Plugin 'git://git.wincent.com/command-t.git'

Plugin 'jreybert/vimagit'

Plugin 'vim-jp/vim-cpp'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

Plugin 'kien/rainbow_parentheses.vim'

Plugin 'townk/vim-autoclose'

Plugin 'bronson/vim-trailing-whitespace'

Plugin 'hdima/python-syntax'

Plugin 'vimjas/vim-python-pep8-indent'

Plugin 'flazz/vim-colorschemes'

Plugin 'lokaltog/vim-powerline'

Plugin 'myusuf3/numbers.vim'

Plugin 'prettier/vim-prettier'

Plugin 'tpope/vim-markdown'

Plugin 'jtratner/vim-flavored-markdown'

Plugin 'jmcantrell/vim-virtualenv'

Plugin 'scrooloose/nerdtree'

Plugin 'scrooloose/syntastic'

Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'

Plugin 'ryanoasis/vim-devicons'

call vundle#end()            " required

filetype plugin indent on    " required
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" NERDTree

" Start NERDTree and leave the cursor in it.
" autocmd VimEnter * NERDTree

" Start NERDTree and put the cursor back in the other window.
autocmd VimEnter * NERDTree | wincmd p

" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" Close the tab if NERDTree is the only window remaining in it.
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <F5> :NERDTree<CR>
nnoremap <F6> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" To ignore plugin indent changes, instead use:
"filetype plugin on

" Brief help

" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Basic settings

set tabstop=4 shiftwidth=4
set autoindent
set smartindent
set cindent
syntax enable
set number
set colorcolumn=80
set encoding=UTF-8
set noshowmode

" Status (Powerline)

set rtp+=~/home/tafara/.local/lib/python3.12/site-packages
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Theme

colorscheme jellybeans

"Airline

let g:airline_theme='simple'

let g:airline#extensions#tabline#left_sep = ' '

let g:airline#extensions#tabline#left_alt_sep = ' '

let g:airline#extensions#tabline#enabled = 1

" set runtimepath+=~/.vim-plugins/LanguageClient-neovim

" GitGutter

let g:gitgutter_sign_added = '✅'
let g:gitgutter_sign_modified = '➡️'
let g:gitgutter_sign_removed = '❌'

" Syntatic

let g:syntastic_javascript_checkers=['standard']
let g:syntastic_javascript_standard_exec = 'semistandard'

" Formatting on save
autocmd bufwritepost *.js silent !semistandard % --fix
set autoread

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Markdown files

augroup markdown
    au!
    au BufNewFile,BufRead *.md,*.markdown setlocal filetype=ghmarkdown
augroup END

" For C/C++ files
" path to directory where library can be found
" let g:clang_library_path='/usr/lib/llvm-3.8/lib'

" or path directly to the library file
" let g:clang_library_path='/usr/lib64/libclang.so.3.8'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
