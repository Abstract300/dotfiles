set nocompatible
filetype plugin on
syntax on

call plug#begin('~/.vim/plugged')

Plug 'https://github.com/dense-analysis/ale.git'
Plug 'https://github.com/vim-airline/vim-airline.git'
Plug 'https://github.com/vim-airline/vim-airline-themes.git'
Plug 'https://github.com/arcticicestudio/nord-vim'
Plug 'https://github.com/preservim/nerdtree.git'
Plug 'https://github.com/vimwiki/vimwiki.git'
Plug 'https://github.com/junegunn/fzf'
Plug 'https://github.com/junegunn/fzf.vim'
Plug 'https://github.com/jremmen/vim-ripgrep'
Plug 'https://github.com/BurntSushi/ripgrep'
Plug 'https://github.com/davidhalter/jedi-vim'

call plug#end()


let g:ale_completion_enabled = 1
let g:ale_completion_delay = 100

let g:ale_linters = {
	\ 'go' : ['gopls', 'golangci-lint'],
	\'python' : ['pyls', 'pylint'],
	\}
"'python': ['autopep8', 'isort'],
let g:ale_fixers = {
	\'go': ['goimports'],
	\ 'python':['yapf', 'isort'],
	\}
let g:ale_go_golangci_lint_executable="golangci-lint"
let g:ale_go_golangci_lint_package=1
let g:ale_virtualenv_dir_names = ['.venv']
let g:ale_fix_on_save = 1
let g:ale_sign_warning = "⚠️"
let g:ale_sign_error = "🔴"

colorscheme nord
let g:alirline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif


" powerline symbols for vim-airline
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.dirty='⚡'


"NERDTree symbols
let g:NERDTreeDirArrowExpandable = '=>'
let g:NERDTreeDirArrowCollapsible = '~'

"VimWiki stuff
let g:vimwiki_list = [{'path': '~/Notes/',
  \'custom_wiki2html': '/home/abstract300/go/bin/vimwiki-godown',
  \'syntax': 'markdown',
  \'ext': '.md'}, {'path': '~/Zettelkasten/',
  \'custom_wiki2html': '/home/abstract300/go/bin/vimwiki-godown',
  \'syntax': 'markdown',
  \'ext': '.md'}]

" Vim general config.
"set cursorline
set relativenumber
set number

"=====Learn Vimscript The Hard Way======
"Folds
set foldmethod=indent
set foldlevel=0
"Open vimrc
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
"Source vimrc
nnoremap <leader>sv :source $MYVIMRC<cr>
"Save in insert mode
inoremap <leader>s <esc>:w<cr>a
"Save in insert mode and enter normal mode
inoremap <leader>sn <esc>:w<cr><esc>
"Save in insert mode and quit
inoremap <leader>sq <esc>:wq<cr>
"Move to the beginning of the line
nnoremap H 0
"Move to the end of the line
nnoremap L $
"Move from Insert to Normal
inoremap jk <esc>
"Move from Visual to Normal
inoremap jk <esc>
"autocommands
augroup testgroup
	autocmd!
	autocmd FileType go :iabbrev <buffer> iff if {<cr>}<esc>ko
augroup end
nnoremap <leader>zt :put =strftime('%Y%m%H%M%S')<CR>gqk2wi[<esc>wviwy$a](<esc>pa.md)<esc>
nnoremap <leader>ct :put =strftime('%Y%m%d%H%M%S')<CR> 
"Disable esc
inoremap <esc> <nop>

" digraphs for math subscripts -> thanks stackoverflow
execute "digraphs ks " . 0x2096 
execute "digraphs as " . 0x2090
execute "digraphs es " . 0x2091
execute "digraphs hs " . 0x2095
execute "digraphs is " . 0x1D62
execute "digraphs ks " . 0x2096
execute "digraphs ls " . 0x2097
execute "digraphs ms " . 0x2098
execute "digraphs ns " . 0x2099
execute "digraphs os " . 0x2092
execute "digraphs ps " . 0x209A
execute "digraphs rs " . 0x1D63
execute "digraphs ss " . 0x209B
execute "digraphs ts " . 0x209C
execute "digraphs us " . 0x1D64
execute "digraphs vs " . 0x1D65
execute "digraphs xs " . 0x2093
