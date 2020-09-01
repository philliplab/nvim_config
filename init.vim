set nocompatible
filetype plugin on
syntax on
colorscheme wombat256mod

" Plug-ins
call plug#begin('~/.vim/plugged')
Plug 'jalvesaq/Nvim-R', {'branch': 'stable'}
Plug 'vimwiki/vimwiki'
Plug 'jalvesaq/vimcmdline'
call plug#end()

" Nvim-R
let R_assign = 0

" File browser
let g:netrw_preview = 1
let g:netrw_liststyle = 3
let g:netrw_winsize = 30

" Indentation
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2

" vimcmdline
let cmdline_app           = {}
let cmdline_app['python'] = 'ipython'
let cmdline_term_height = 25

" vimwiki
let g:vimwiki_folding = 'list'

" Shortcuts
" Insert file name with \fn
inoremap <Leader>fn <C-R>=expand("%:t:r")<CR>

" Register vimwikis
let wiki_1 = {}
let wiki_1.path = '~/0_para/1_projects/los/'
let wiki_1.name = 'los'

let wiki_2 = {}
let wiki_2.path = '~/0_para/1_projects/wda/notes/wda-notes/'
let wiki_2.name = 'wda'

let g:vimwiki_list = [wiki_1, wiki_2]
