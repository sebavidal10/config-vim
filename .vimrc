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

Plug 'mileszs/ack.vim'

Plug 'morhetz/gruvbox'

call plug#end()

" Bind "<leader>p" to a fzf-powered filename search
nmap <leader>p :Files!<CR>

colorscheme gruvbox
set background=dark

" ack.vim --- {{{
" requiere ripgrep > brew install ripgrep
" Use ripgrep for searching ⚡️
" Options include:
" --vimgrep -> Needed to parse the rg response properly for ack.vim
" --type-not sql -> Avoid huge sql file dumps as it slows down the search
" --smart-case -> Search case insensitive if all lowercase pattern, Search case sensitively otherwise
let g:ackprg = 'rg --vimgrep --type-not sql --smart-case'

" Auto close the Quickfix list after pressing '<enter>' on a list item
let g:ack_autoclose = 1

" Any empty ack search will search for the work the cursor is on
let g:ack_use_cword_for_empty_search = 1

" Don't jump to first match
cnoreabbrev Ack Ack!

" Maps <leader>/ so we're ready to type the search keyword
nnoremap <Leader>/ :Ack!<Space>
" }}}

" Navigate quickfix list with ease
nnoremap <silent> [q :cprevious<CR>
nnoremap <silent> ]q :cnext<CR>
