set nocompatible              " be iMproved, required
filetype off                  " required
set exrc

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" ==== PLUGINS ====
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'scrooloose/nerdtree'
Plugin 'Valloric/YouCompleteMe'
Plugin 'airblade/vim-gitgutter'
Plugin 'scrooloose/syntastic'
Plugin 'christoomey/vim-conflicted'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'mattn/emmet-vim'
Plugin 'sjl/gundo.vim'
Plugin 'easymotion/vim-easymotion'
Plugin 'tpope/vim-surround'
Plugin 'kien/ctrlp.vim'
Plugin 'godlygeek/tabular'
Plugin 'takac/vim-hardtime'

" ==== PLUGIN THEMES ====
Plugin 'vim-scripts/darktango.vim'
Plugin 'jonathanfilip/vim-lucius'
Plugin 'morhetz/gruvbox'
" ==== END PLUGIN THEMES ====

" ==== PLUGIN SYNTAXES ====
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'othree/yajs.vim'
Plugin 'mitsuhiko/vim-jinja'
Plugin 'evanmiller/nginx-vim-syntax'
Plugin 'Yggdroot/indentLine'
" === END PLUGIN SYNTAXES ====

" ==== END PLUGINS ====

call vundle#end()
filetype plugin indent on

" ==== VIM-HARDTIME ====
" let g:hardtime_default_on = 1

" ==== BASIC ====
colorscheme gruvbox
set guifont=Monospace\ 10
set fillchars+=vert:\$
syntax enable
set background=dark
set ruler
set hidden
set number
set laststatus=2
set smartindent
set st=4 sw=4 et
set shiftwidth=4
set tabstop=4
let &colorcolumn="100"
:set guioptions-=m  "remove menu bar
:set guioptions-=T  "remove toolbar
:set guioptions-=r  "remove right-hand scroll bar
:set guioptions-=L  "remove left-hand scroll bar
:set lines=999 columns=999

set showcmd         " show command in bottom bar
set cursorline      " highlight current line
set wildmenu        " visual autocomplete for command menu
set lazyredraw

" search
set incsearch       " search as characters are entered
set hlsearch        " highlight matches
:set smartcase       " case insensitive search

" folding
set foldenable      " enable folding
set foldlevelstart=10   " open most folds by default
set foldnestmax=10      " 10 nested folds max
" space open/close folds
nnoremap <space> za
set foldmethod=indent

if has('mouse')
    set mouse=nv    " enable mouse in Normal and Visual modes
endif

if has('autocmd')
    au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" ==== NERDTREE ====
let NERDTreeIgnore = []
let g:NERDTreeWinPos="left"
let g:NERDTreeDirArrows=0
map <C-t> :NERDTreeToggle<CR>

" ==== Syntastic ====
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_mri_args = "--config=$HOME/.jshintrc"
let g:syntastic_yaml_checkers = ['jsyaml']
let g:syntastic_html_tidy_exec = 'tidy5'

" ==== Easymotion ====
let g:EasyMotion_do_mapping = 0
let g:EasyMotion_smartcase = 1
nmap f <Plug>(easymotion-s)

nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>

" ==== TERN ====
let g:used_javascript_libs = 'underscore,angularjs,chai,mocha,handlebars,ramda,vue'

set secure
cmap w!! w !sudo tee > /dev/null %
