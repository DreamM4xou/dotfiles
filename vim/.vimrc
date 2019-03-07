
if 0 | endif


if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=~/.vim/bundle/neobundle.vim/

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'airblade/vim-gitgutter'
NeoBundle "Shougo/unite.vim"
NeoBundle "Shougo/unite-outline"
NeoBundle 'ctrlpvim/ctrlp.vim'
NeoBundle "maxbrunsfeld/vim-yankstack"
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'int3/vim-extradite'
NeoBundle 'tpope/vim-rhubarb'
NeoBundle 'tomtom/tcomment_vim'
NeoBundle 'junegunn/fzf'
NeoBundle 'junegunn/fzf.vim'
NeoBundle 'tpope/vim-surround'
NeoBundle 'bkad/CamelCaseMotion'
NeoBundle 'tpope/vim-eunuch'
NeoBundle 'Raimondi/delimitMate'
NeoBundle 'docunext/closetag.vim'
NeoBundle 'rhysd/clever-f.vim'
NeoBundle 'henrik/vim-indexed-search'
NeoBundle 'kshenoy/vim-signature'
NeoBundle 'tomtom/tlib_vim'
NeoBundle 'marcweber/vim-addon-mw-utils'
NeoBundle 'garbas/vim-snipmate'
NeoBundle 'ConradIrwin/vim-bracketed-paste'

NeoBundle "terryma/vim-multiple-cursors"

" --------- Themes --------
NeoBundle 'Leotomas/vim-atom-dark'
NeoBundle 'chriskempson/base16-vim'
NeoBundle 'rakr/vim-one'
NeoBundle 'tyrannicaltoucan/vim-quantum'
NeoBundle 'lifepillar/vim-solarized8'
NeoBundle 'morhetz/gruvbox'
NeoBundle 'mhartington/oceanic-next'
NeoBundle 'jdkanani/vim-material-theme'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'rking/ag.vim'
NeoBundle 'majutsushi/tagbar'
NeoBundle 'zacanger/angr.vim'
NeoBundle 'dylanaraps/crayon'
NeoBundle 'tomasiser/vim-code-dark'
NeoBundle 'nightsense/seabird'
NeoBundle 'marcopaganini/termschool-vim-theme'

" --------- JS --------- "
" NeoBundle 'jelera/vim-javascript-syntax'
NeoBundle 'Sefima/vim-nearest-complete-improved'
" NeoBundleLazy 'maralla/completor.vim', {'autoload':{'filetypes':['javascript', 'vue']}}
NeoBundleLazy 'w0rp/ale', {'autoload':{'filetypes':['javascript', 'vue', 'css', 'scss', 'sass']}}
NeoBundleLazy 'jelera/vim-javascript-syntax', {'autoload':{'filetypes':['javascript', 'vue']}}
NeoBundleLazy 'vim-scripts/JavaScript-Indent', {'autoload':{'filetypes':['javascript', 'vue']}}
NeoBundleLazy 'heavenshell/vim-jsdoc', {'autoload':{'filetypes':['javascript', 'vue']}}
" NeoBundleLazy 'ternjs/tern_for_vim', {'autoload':{'filetypes':['javascript', 'vue']}}

" Vue linter "
" NeoBundleLazy 'posva/vim-vue', {'autoload':{'filetypes':['vue']}}

call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

"colorscheme atom-dark
set bg=dark
" set bg=light
" colorscheme gruvbox
" colorscheme solarized8_dark
" colorscheme one
colorscheme OceanicNext

set rtp+=~/.fz
set rtp+=~/Documents/projects/perso/dotfiles-that-fly/snippets

syntax enable
set visualbell
set encoding=utf-8
set t_Co=256
" set term=xterm-256color
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
if (has("termguicolors"))
    set termguicolors
endif
set noerrorbells
set ignorecase
set smartcase
set hlsearch
set nonumber
set laststatus=2
set mouse=a
set backspace=indent,eol,start
set autoindent
set copyindent
highlight Search cterm=underline
set history=75
set undolevels=75
set title
set nobackup
set path+=**
" --- Tabs & indents
set tabstop=4
set shiftwidth=4
set expandtab
" set softtabstop=0
" set smarttab
" -- Clipboard
set clipboard=unnamed
" --- code wrapping
set wrap
set wildmenu
set wildignore+=*/node_modules/*,*/vendor/*

" --- folds
set viewoptions=cursor,folds,slash,unix
set fdm=indent
set fdc=1
set fdl=1
set nofen


"--- Macvim Stuff ----"
set guioptions-=r
set guioptions-=L
set guioptions-=r
set guioptions-=T
set guifont=FiraMono:h12
set linespace=3

"Make vim faster
set nocursorcolumn      " Don't paint cursor column
set nocursorline
set lazyredraw          " Wait to redraw
set ttyfast
set scrolljump=8        " Scroll 8 lines at a time at bottom/top
let html_no_rendering=1 " Don't render italic, bold, links in HTML"

let mapleader = ","
let g:mapleader = ","

"stop using escape guys
imap jj <esc>
nmap <enter> o<esc>


vmap n' c'<C-r>"'<esc>
vmap n" c"<C-r>""<esc>
vmap n[ c[<C-r>"]<esc>
vmap n( c(<C-r>")<esc>
vmap n{ c{<C-r>"}<esc>
vmap n<space> c<space><C-r>"<space><esc>

nmap <leader>w :w!<cr>
nmap <leader>q :q!<cr>
" close all splits except the one focused
nmap <leader>o :only<cr>
set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set undodir=~/.vim/undo//
nnoremap <Left> :vertical resize -2<CR>
nnoremap <Right> :vertical resize +2<CR>
nnoremap <Up> :resize -2<CR>
nnoremap <Down> :resize +2<CR>

nmap <leader>y <Plug>yankstack_substitute_older_paste
nmap <leader>Y <Plug>yankstack_substitute_new_paste
" nnoremap <leader>p :CtrlP <cr>
" nnoremap <leader><space> :CtrlPBuffer<cr>
"
nnoremap <leader><space> :Buffer<cr>
nnoremap <leader>p :GFiles<cr>
" nnoremap <leader>f :Lines<cr>
" nnoremap <leader>r :TagbarToggle<cr>
nnoremap <leader>r :<C-u>Unite -no-split -buffer-name=outline -start-insert outline<cr>

let g:auto_folds_toggle = 0
function! g:ToggleAutoFolds()
    if (g:auto_folds_toggle == 0)
        let g:auto_folds_toggle = 1
        set fen
        echo "fold enable"
    else
        let g:auto_folds_toggle = 0
        set nofen
        echo "fold disable"
    endif
endfunction
nmap <leader>f :call ToggleAutoFolds()<CR>
" function! g:ToggleAutoFolds(mode)
"     if (a:mode == 'manual')
"         let g:auto_folds_toggle = 'manual'
"         set fdm = 'manual'
"         set fen
"     else if (a:mode == 'enable')
"         let g:auto_folds_toggle = 'indent'
"         set fdm = 'indent'
"         set fen
"     else if (a:mode == 'disable')
"         let g:auto_folds_toggle = 'disable'
"         set nofen
"     endif
" endfunction
" nmap <leader>fm :call ToggleAutoFolds('manual')<C-R>
" nmap <leader>fi :call ToggleAutoFolds('indent')<C-R>
" nmap <leader>fd :call ToggleAutoFolds('disable')<C-R>

" set statusline=%<%f:%{ALEGetStatusLine()}\ %h%m%r%=%{fugitive#statusline()}\ \ %-14.(%l,%c%V%)\%p%%
"set statusline=%<%f\ %h%m%r%=%{fugitive#statusline()}\ \ %-14.(%l,%c%V%)\%p%%

"---- Case Motions -----"
map <silent> w <Plug>CamelCaseMotion_w
map <silent> b <Plug>CamelCaseMotion_b
map <silent> e <Plug>CamelCaseMotion_e
map <silent> ge <Plug>CamelCaseMotion_ge


"--- Nedtree ----"
nmap <C-b> :NERDTreeToggle<CR>
nmap <C-f> :NERDTreeFind<CR>

"------ Ale ------

let g:ale_linters = {
            \   'javascript': ['eslint'],
            \   'php': ['phpcs']
            \}
let g:ale_statusline_format = ['⨉ %d', '⚠ %d', '⬥ ok']
let g:ale_linter_aliases = {'vue': ['javascript', 'html', 'scss', 'eslint-plugin-vue']}

"---- Removes Trailing Spaces on save ----"
autocmd BufWritePre * %s/\s\+$//e

au BufRead,BufNewFile *.twig set filetype=html

" --- auto set type is js for vue files ----
" au BufRead,BufNewFile *.vue set filetype=javascript
autocmd BufNewFile,BufRead *.vue set filetype=vue.javascript
 au BufNewFile,BufRead *.vue syntax sync fromstart

" --- Syntastic ---"
" let g:syntastic_javascript_checkers = ['eslint']

" --- Completor PHP trigger ---- "
"  referred : https://github.com/maralla/completor.vim/issues/24
" let g:completor_php_omni_trigger = '([$\w]+|use\s*|->[$\w]*|::[$\w]*|implements\s*|extends\s*|class\s+[$\w]+|new\s*)$'

abbrev ee e **

" --- JsDoc conf ---- "
let g:jsdoc_allow_input_prompt = 1
let g:jsdoc_input_description = 1
let g:jsdoc_access_descriptions = 1
let g:jsdoc_underscore_private = 1
let g:jsdoc_enable_es6 = 1

map <leader>d :JsDoc <cr>
vmap * y/<C-r>"<CR>

" --- Completor ---"
let g:completor_min_chars=3
let g:completor_auto_trigger=1

" ---  Ale ----"
let g:ale_lint_on_save=1
let g:ale_lint_on_text_changed=1
let g:ale_lint_on_enter=0
" let g:ale_statusline_format = ['⨉', '⚠', '⬥']
let g:ale_sign_error="x"
let g:ale_sign_warning="!"
let g:ale_sign_column_always = 1

" ---- FZF ---- "
"let $FZF_DEFAULT_COMMAND = 'ag -l -g "'"

"Tagbag
let g:tagbar_ctags_bin='/usr/bin/ctags-exuberant'

" let g:UltiSnipsExpandTrigger="<tab>"
" let g:UltiSnipsJumpForwardTrigger="<c-b>"
" let g:UltiSnipsJumpBackwardTrigger="<c-z>"
"
" inoremap <c-i> <c-r>=UltiSnips#ExpandSnippetOrJump()<cr>
nnoremap ,pro :-1read ~/.vim/skeletons/promise<CR>ji<TAB>
nnoremap ,cl :-1read ~/.vim/skeletons/console<CR>f)i
nnoremap ,catch :-1read ~/.vim/skeletons/catch<CR>j

set runtimepath^=~/.vim/bundle/ag

function! LinterStatus() abort
   let l:counts = ale#statusline#Count(bufnr(''))

   let l:all_errors = l:counts.error + l:counts.style_error
   let l:all_non_errors = l:counts.total - l:all_errors

   return l:counts.total == 0 ? 'OK' : printf(
               \   '%dW %dE',
               \   all_non_errors,
               \   all_errors
               \)
endfunction

" --- Completor ---
set completefunc=NearestComplete
set completeopt=menu

inoremap <silent><expr> <C-n>      pumvisible() ? "\<C-n>" : "\<C-x><C-u>"
imap <expr> <Esc>      pumvisible() ? "\<C-e>" : "\<Esc>"
imap <expr> <CR>       pumvisible() ? "\<C-y>" : "\<CR>"
" ---

" minimal status line (displays git repo)
set statusline=%<%f=%{LinterStatus()}\ %h%m%r%=%{fugitive#statusline()}\ \ %-14.(%l,%c%V%)\%p%%
