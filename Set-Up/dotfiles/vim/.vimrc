call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'git://git.wincent.com/command-t.git'

Plug 'scrooloose/nerdtree'
Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag'
Plug 'gregsexton/matchtag'
Plug 'hail2u/vim-css3-syntax'
Plug 'vim-scripts/indentpython.vim'
Plug 'chr4/nginx.vim'
Plug 'vim-scripts/bash-support.vim'
Plug 'lifepillar/pgsql.vim'
Plug 'kovetskiy/vim-bash'
Plug 'kien/rainbow_parentheses.vim'
Plug 'hdima/python-syntax'
Plug 'chase/vim-ansible-yaml'
Plug 'flazz/vim-colorschemes'
Plug 'junegunn/fzf'
Plug 'ntpeters/vim-better-whitespace'
Plug 'matze/vim-move'
Plug 'pangloss/vim-javascript'
Plug 'elzr/vim-json'
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-markdown'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/syntastic'
Plug 'prettier/vim-prettier'
Plug 'jmcantrell/vim-virtualenv'
Plug 'dense-analysis/ale'

Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'
call plug#end()

" NERDTree
"=========
" Start NERDTree and leave the cursor in it.
" autocmd VimEnter * NERDTree

" Start NERDTree and put the cursor back in the other window.
" autocmd VimEnter * NERDTree | wincmd p

" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" Close the tab if NERDTree is the only window remaining in it.
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <F5> :NERDTree<CR>
nnoremap <F6> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" AUTO CLOSING TAGS
" =================

" filenames like *.xml, *.html, *.xhtml, ...
" These are the file extensions where this plugin is enabled.
"
let g:closetag_filenames = '*.html,*.xhtml,*.phtml'

" filenames like *.xml, *.xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx'

" filetypes like xml, html, xhtml, ...
" These are the file types where this plugin is enabled.
"
let g:closetag_filetypes = 'html,xhtml,phtml'

" filetypes like xml, xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filetypes = 'xhtml,jsx'

" integer value [0|1]
" This will make the list of non-closing tags case-sensitive (e.g. `<Link>` will be closed while `<link>` won't.)
"
let g:closetag_emptyTags_caseSensitive = 1

" dict
" Disables auto-close if not in a "valid" region (based on filetype)
"
let g:closetag_regions = {
    \ 'typescript.tsx': 'jsxRegion,tsxRegion',
    \ 'javascript.jsx': 'jsxRegion',
    \ 'typescriptreact': 'jsxRegion,tsxRegion',
    \ 'javascriptreact': 'jsxRegion',
    \ }

" Shortcut for closing tags, default is '>'
"
let g:closetag_shortcut = '>'

" Add > at current position without closing the current tag, default is ''
"
let g:closetag_close_shortcut = '<leader>>'

" RAINBOW PARENTHESES
" ===================

let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['black',       'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]

let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0

au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

" WHITESPACE
" ==========

let g:better_whitespace_ctermcolor='white'
let g:better_whitespace_enabled=1
let g:strip_whitespace_on_save=1
let g:move_key_modifier = 'Alt'

" JSON
"=====

augroup json_autocmd
  autocmd!
  autocmd FileType json set autoindent
  autocmd FileType json set formatoptions=tcq2l
  autocmd FileType json set textwidth=78 shiftwidth=2
  autocmd FileType json set softtabstop=2 tabstop=4
  autocmd FileType json set expandtab
  autocmd FileType json set foldmethod=syntax
augroup END

" MARKDOWN
" ========

let g:markdown_fenced_languages = ['html', 'python', 'bash=sh', 'c', 'javascript', 'ruby', 'go', 'java', 'css']
let g:markdown_syntax_conceal = 0
let g:markdown_minlines = 100

"Airline
"=======
let g:airline_theme='simple'
let g:airline#extensions#tabline#left_sep = '  '
let g:airline#extensions#tabline#left_alt_sep = ' '
let g:airline#extensions#tabline#enabled = 1

" Syntatic
"=========
let g:syntastic_javascript_checkers=['standard']
let g:syntastic_javascript_standard_exec = 'semistandard'


" ALE
"====
" let b:ale_fixers = {'javascript': ['prettier', 'eslint']}
" Set this variable to 1 to fix files when you save them.
" let g:ale_fix_on_save = 1

" Formatting on save
autocmd bufwritepost *.js silent !semistandard % --fix
set autoread

" GitGutter
"==========
let g:gitgutter_sign_added = '>>'
let g:gitgutter_sign_modified = '!!'
let g:gitgutter_sign_removed = 'XX'

" BASIC SETTINGS
" ==============

colorscheme blacklight
set tabstop=4 shiftwidth=4
set autoindent
set smartindent
set cindent
syntax enable
set number
set colorcolumn=80
set encoding=UTF-8
set noshowmode

