set ttimeout
set ttimeoutlen=0 " wait up to 0ms after Esc for special key

" navegar netrw
set nocp
filetype plugin on

" :source % inside vim to refresh
set hidden

" disable swap
set nobackup
set nowritebackup
set noswapfile

set number        " show number line
set ruler         " always ruler
syntax on         " highlight sintax

set hlsearch      " highlight search results
set nohlsearch    " clear highlight after search

set showmatch     " show pari bracket
set wildmenu      " enable wild menu

set wrap          " Wrap lines
set expandtab     " Space instead of tabs
set smarttab      " Smar tab
set ai            " Auto indent
set si            " Smart indent
set shiftwidth=2  " 1 tab = 2 spaces
set tabstop=2     " tab stop on 2 spaces

set splitbelow splitright " Split open at the right side and below

call plug#begin()

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'

Plug 'airblade/vim-gitgutter'
let g:gitgutter_termina_reports_focus = 0

Plug 'morhetz/gruvbox'

call plug#end()

" Bind "<leader>p" to a fzf-powered filename search
nmap <leader>p :Files!<CR>

colorscheme gruvbox
