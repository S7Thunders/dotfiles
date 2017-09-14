set nocompatible            " don't emulate vi old-school features
call plug#begin('~/.vim/plugged')
execute pathogen#infect()

" Leader shortcuts
let g:mapleader=','         " leader is comma

" Load NerdTree when vim loaded without a file
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" toggle NerdTree
map <C-\> :NERDTreeToggle<CR>
" toggle Gundo
nnoremap <leader>u :GundoToggle<CR>

set ts=2 sw=2 et

syntax enable               " enable syntax processing
filetype plugin on
set tabstop=2               " number of visual spaces per TAB
set softtabstop=2           " number of spaces in tab when editing
set expandtab               " tabs are spaces

" UI config
set number              " show line numbers
set showcmd             " show command in bottom bar
set cursorline          " highlight current line
filetype indent on      " load filetype-specific indent files
set wildmenu            " visual autocomplete for command menu
set lazyredraw          " redraw only when we need to
set showmatch           " highlight matching [{()}]

" Searching
set incsearch           " search as characters are entered
set hlsearch            " highlight matches

" Folding
set foldenable          " enable folding
set foldlevelstart=10   " open most folds by default
set foldnestmax=10      " 10 nested fold max
" space open/closes folds
nnoremap <space> za
set foldmethod=indent   " fold based on indent level


set history=5000        " set history limit

if has('mouse')
    set mouse=nv        " enable mouse in Normal and Visual modes
endif

" jump to the last position in file when reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" tell Tern for vim what libs to autocomplete 
let g:used_javascript_libs = 'underscore,angularjs,chai,handlebars,ramda,vue'

let g:javascript_plugin_jsdoc = 1

let g:javascript_conceal_function             = "ƒ"
let g:javascript_conceal_null                 = "ø"
let g:javascript_conceal_this                 = "@"
let g:javascript_conceal_return               = "⇚"
let g:javascript_conceal_undefined            = "¿"
let g:javascript_conceal_NaN                  = "ℕ"
let g:javascript_conceal_prototype            = "¶"
let g:javascript_conceal_static               = "•"
let g:javascript_conceal_super                = "Ω"
let g:javascript_conceal_arrow_function       = "⇒"
let g:javascript_conceal_noarg_arrow_function = "🞅"
let g:javascript_conceal_underscore_arrow_function = "🞅"

set conceallevel=1

" vim-airline config
set laststatus=2    " make vim-airline appear always, not just with split windows 
"let g:airline_powerline_fonts = 1

" Buffers
set hidden
" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1

" To open a new empty buffer
" This replaces :tabnew which I used to bind to this mapping
nmap <leader>T :enew<CR>

" Move to the next buffer
nmap <leader>l :bnext<CR>

" Move to the previous buffer
nmap <leader>h :bprevious<CR>

" Close the current buffer and move to the previous one
" This replicates the idea of closing a tab
nmap <leader>bq :bp <BAR> bd #<CR>

" Show all open buffers, their status and allows to switch to a new buffer
nmap <leader>bl :ls<CR>:b<space>


call plug#end()

cmap w!! w !sudo tee > /dev/null %
