" :verbose map <C-W>
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" :PluginList
" :PluginInstall(!)
" :PluginSearch(!)
" :PluginClean(!)
" :h vundle
Plugin 'gmarik/Vundle.vim'
"allows gvim colorschemes to work in terminal vim
Plugin 'godlygeek/csapprox'
Plugin 'scrooloose/nerdtree'
"Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/syntastic'
"Plugin 'Valloric/YouCompleteMe'
Plugin 'Raimondi/delimitMate' " inserts closing brackets
Plugin 'honza/vim-snippets'
Plugin 'mattn/emmet-vim'
Plugin 'mattn/webapi-vim'
Plugin 'pangloss/vim-javascript'
Plugin 'tpope/vim-haml'
"Plugin 'marijnh/tern_for_vim' " for python2
Plugin 'klen/python-mode'
"Plugin 'hdima/python-syntax'
"Plugin 'hynek/vim-python-pep8-indent'
"Plugin 'jcrocholl/pep8'
Plugin 'Glench/Vim-Jinja2-Syntax'
Plugin 'gregsexton/MatchTag' " html tag highlighting
"Plugin 'FredKSchott/CoVim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'bkad/CamelCaseMotion'
Plugin 'kien/ctrlp.vim'
Plugin 'jmcantrell/vim-virtualenv'
Plugin 'edkolev/promptline.vim'
Plugin 'edkolev/tmuxline.vim'
Plugin 'bling/vim-airline'
Plugin 'itchyny/landscape.vim'
Plugin 'vim-scripts/Lucius'
Plugin 'tpope/vim-vividchalk'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-scripts/tinymode.vim'
Plugin 'kana/vim-submode'
Plugin 'jwhitley/vim-matchit' "for matching ML tags, etc
Plugin 'tpope/vim-capslock'

Plugin 'fatih/vim-go'


call vundle#end()
filetype plugin indent on

"from CentOS7
"python import sys; sys.path.append("/usr/local/lib/python3.4/site-packages/")

map <F7> <Esc>
map! <F7> <Esc>
" virtual capslock
imap <leader><F7> <Plug>CapsLockToggle
map CAPS <Esc>

"
" Syntax highlighting
syntax on
let g:mapleader = ","
set t_Co=256

if $COLORTERM == 'gnome-terminal'
  set t_Co=256
endif

" NERDTree browsing fix
let g:NERDTreeDirArrows=0

" Search options
set ignorecase
set incsearch
set hlsearch
set wrapscan
"nnoremap <esc> :noh<return><esc>

set clipboard+=unnamed

" Cursor movement options
set backspace=indent,eol,start
":set nostartofline
set mouse=
"set mousemodel=extend
"set mousefocus
set scrolloff=1 " set lines above/below cursor
imap <C-d> <CR><Esc>O
nmap <C-d> i<CR><Esc>k$i


set laststatus=2
set visualbell
set t_vb= " something to do with visualbell
set cmdheight=2
set ruler
set relativenumber
set number
set showcmd
set showmatch
set timeoutlen=500
set colorcolumn=90

" Use <F11> to toggle paste, nopaste
":set pastetoggle=<F11>

" Indentation
set shiftwidth=2
set softtabstop=2
set tabstop=2
"set expandtab
filetype indent on

" Reload files instead of asking
:set autoread


" pymode options
"set foldlevelstart=0
"set fen
"set nofen
"let g:pymode_folding = "<leader>h"
let g:pymode_rope_complete_on_dot = 0
let g:pymode_rope_completion = 1
let g:pymode_rope_lookup_project = 0
"""""""""""""""
" seems to be a bug, try removing later
let g:pymode_rope = 0
" fix for pep8 indent from python-mode:
"let g:pymode_indent = 0

" ----------------------------
"  Shortcuts
"  to open .vimrc
nmap <leader>ev :edit ~/.vimrc<cr>
"  to open NERDTree
"let g:nerdtree_tabs_open_on_gui_startup = 1
nnoremap <C-e>b :NERDTreeToggle<CR>
nnoremap <leader>el :NERDTree /var/log/tacle<cr>
nnoremap <leader>et :NERDTree /var/www/tacle<cr>
nnoremap <leader>ep :NERDTree /var/envtacle<cr>
nnoremap <leader>er :NERDTree /var/www/tacle-run<cr>
"  Close with <C-w>w
nnoremap <C-e><C-e> :Bclose<CR>
nnoremap <c-e>j <c-w>j
nnoremap <c-e>k <c-w>k
nnoremap <c-e>l <c-w>h
nnoremap <c-e>; <c-w>l
"nnoremap <C>j :tabp<CR>
nnoremap <leader>l :tabp<CR>
nnoremap <leader>; :tabn<CR>
nnoremap <c-t> :tabnew<CR>
"call submode#enter_with('cycletabs', 'n', '<leader>l', ':tabp')
"call submode#enter_with('cycletabs', 'n', '<leader>;', ':tabn')
"call submode#leave_with('cycletabs', 'n', '', '<Esc>')
"call submode#map('cycletabs', 'n', '', 'l', ':tabp')
"call submode#map('cycletabs', 'n', '', ';', ':tabn')
"let g:submode_keep_leaving_key = 'true'
"call tinymode#EnterMap('cycletabs', '<leader>l', '\:tabp\<CR>')
"call tinymode#EnterMap('cycletabs', '<leader>;', '\:tabn\<CR>')
"call tinymode#Map('cycletabs', 'l', '\:tabp\<CR>')
"call tinymode#Map('cycletabs', ';', '\:tabn\<CR>')
"
call tinymode#EnterMap('tableft', '<leader>l', '')
call tinymode#Map('tableft', 'l', ':tabp')
call tinymode#Map('tableft', ';', ':tabn')
call tinymode#ModeArg('tableft', 'entercmd', ':tabp')
call tinymode#ModeMsg('tableft', 'oh ja tinymode')

call tinymode#EnterMap('tabright', '<leader>;', '')
call tinymode#Map('tabright', 'l', ':tabp')
call tinymode#Map('tabright', ';', ':tabn')
call tinymode#ModeArg('tabright', 'entercmd', ':tabn')
call tinymode#ModeMsg('tabright', 'oh ja tinymode')

call tinymode#ModeArg('tableft', 'timeoutlen', 300)
call tinymode#ModeArg('tabright', 'timeoutlen', 300)



map <silent> w <Plug>CamelCaseMotion_w
map <silent> b <Plug>CamelCaseMotion_b
map <silent> e <Plug>CamelCaseMotion_e
sunmap w
sunmap b
sunmap e

noremap h ;
noremap l h
noremap ; l


" Toggle comments using <leader>cc
nnoremap <leader>cc :TComment<CR>
vnoremap <leader>cc :TComment<CR>
inoremap <leader>cc <Esc>:TComment<CR>
" Paste in insert mode
imap <C-v> <C-r>*
" Autocompletion
imap <C-a> <C-x><C-p>
"" Emmet keybinds
let g:user_emmet_settings = webapi#json#decode(join(readfile(expand('~/.snippets_custom.json')), "\n"))
let g:use_emmet_complete_tag = 1
imap <expr> <c-y> emmet#expandAbbrIntelligent("\<c-y>")
let g:user_emmet_splitjointag_key = "<C-S-'>"
let g:user_emmet_expandabbr_key = "<C-y>"


let g:pep8_ignore="E501,E265,E128"
let g:pymode_lint_ignore="E501,E265,E128"


" move arrow keys on display lines
nnoremap <j> gj
nnoremap <k> gk

au BufNewfile,BufRead *.jinja2 set filetype=html
au BufNewfile,BufRead Gruntfile set filetype=javascript
autocmd FileType scss setlocal expandtab

" jinja commend for NERDCommentator
" NOTE leads to unexpected html activity
augroup SetCMS
  autocmd FileType html let &l:commentstring='{#%s#}'
augroup END


" tacle workspace setup
function SetupTacle()
	:edit /var/log/tacle/uwsgi.log
	":tabe /var/www/tacle/cassaconn/init_cfs.py
	":NERDTree /var/www/tacle
	":tabe /var/www/tacle/tacboard/models.py
	":NERDTree /var/www/tacle
	:tabe /var/www/tacle/users/user.py
	:NERDTree /var/www/tacle
	:tabe /var/www/tacle/tacboard/admin_views.py
	:NERDTree /var/www/tacle
	:tabe
	:NERDTree /var/www/tacle
	:tabe
	:NERDTree /var/www/tacle
	:tabe
	:NERDTree /var/www/tacle
	:tabe
	:NERDTree /var/www/tacle
endfunction

command Tacle exec SetupTacle()


" tacle workspace setup
function SetupStartupdex()
	:edit /home/taylor/projects/startupdex/startupdex/__init__.py
	":tabe /var/www/tacle/cassaconn/init_cfs.py
	":NERDTree /var/www/tacle
	":tabe /var/www/tacle/tacboard/models.py
	":NERDTree /var/www/tacle
	:tabe /home/taylor/projects/startupdex/startupdex/models.py
	:NERDTree /home/taylor/projects/startupdex
	:tabe /home/taylor/projects/startupdex/startupdex/view_misc.py
	:NERDTree /home/taylor/projects/startupdex
	:tabe
	:NERDTree /home/taylor/projects/startupdex
	:tabe
	:NERDTree /home/taylor/projects/startupdex
	:tabe
	:NERDTree /home/taylor/projects/startupdex
	:tabe
	:NERDTree /home/taylor/projects/startupdex
endfunction

command Startupdex exec SetupStartupdex()



" UI options
"set guioptions=-m "remove menu bar
"set guioptions+=lrbmTLce
"set guioptions-=lrbmTLce
set mousehide                " Turn off mouse when typing
set guioptions-=l            
set guioptions-=r            " Remove right hand scrollbar
set guioptions-=b            
set guioptions-=m           
set guioptions-=T            " Remove toolbar
set guioptions-=L            " Remove left-hand scrollbar (for v-split)
set guioptions+=c            " Use console dialogs when possible
set guioptions-=e            
set visualbell t_vb=         " Turn off flashing (needs to be in gvimrc too)
" set guicursor=a:blinkon0   " turn off cursor blinking
highlight Cursor guifg=white guibg=black
highlight iCursor guifg=white guibg=steelblue

"colorscheme landscape
"set guicursor=a:blinkon4000-blinkoff4000  " Slow down cursor blinking speed"

set guicursor=a:blinkon0  " Slow down cursor blinking speed"

"let g:virtualenv_auto_activate
let g:syntastic_python_python_exec = '/var/envtacle/bin/python'

"colorschemes for bright colors:
"zellner, shine
colorscheme slate
"set gfn=Droid\ Sans\ Mono\ 10
set gfn=DejaVu\ Sans\ Mono\ for\ Powerline\ Book\ 10
"autocmd VimEnter * NERDTreeToggle .
set nomodeline

" highlight colons to distinguish them from semicolons
match todo /;/

