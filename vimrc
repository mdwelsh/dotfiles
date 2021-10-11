" vimrc customized for MacOS X plus iTerm

"execute pathogen#infect()

" Go setup
"filetype off
"filetype plugin indent off
"filetype plugin indent on
"syntax on

set noshowmode
set ts=8
set tw=100
set noruler
set ai
set shiftwidth=4
set background=dark
set wildmode=longest:full
set wildmenu
set hlsearch
set nocompatible   " Disable vi-compatibility
set laststatus=2   " Always show the statusline
set encoding=utf-8 " Necessary to show Unicode glyphs
set t_Co=256 " Explicitly tell Vim that the terminal supports 256 colors

" allow backspacing over everything in insert mode
set backspace=indent,eol,start
set copyindent    " copy the previous indentation on autoindenting
"set number        " always show line numbers
set shiftround    " use multiple of shiftwidth when indenting with '<' and '>'
set showmatch     " set show matching parenthesis
set ignorecase    " ignore case when searching
set smartcase     " ignore case if search pattern is all lowercase, case-sensitive otherwise
set smarttab      " insert tabs on the start of a line according to shiftwidth, not tabstop
set expandtab     " insert spaces for tabs
set incsearch     " show search matches as you type

set history=1000         " remember more commands and search history
set undolevels=1000      " use many muchos levels of undo
set wildignore=*.swp,*.bak,*.pyc,*.class
set title                " change the terminal's title
set visualbell           " don't beep
set noerrorbells         " don't beep
" Disable | char in vert split. Note space after \ in the line below.
set fillchars+=vert:\ 

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'flazz/vim-colorschemes'
Plugin 'scrooloose/nerdtree'
Plugin 'ambv/black'
Plugin 'rhysd/vim-clang-format'

call vundle#end()            " required
filetype plugin indent on    " required

" NERDTree support
" Use Ctrl-N to open up NerdTree.
let g:NERDTreeWinPos = "right"
let g:NERDTreeDirArrows=0
map <C-n> :NERDTreeToggle<CR>

" Airline support
let g:airline_theme='molokai'

syntax enable

let myfiletypefile="/home/mdw/.vim/filetype.vim"

" Add Go formatting support.
au BufRead,BufNewFile *.go set filetype=go

" map B :buffer 
map B :buffers<CR>:buffer<Space>

map <C-l> :nohlsearch<CR>:redraw<CR>:<BS>
autocmd FileType borg       set cindent | set tw=0 | map <C-u> i<C-f><Esc>j | let w:m2=matchadd('ErrorMsg', '\%>100v.\+', -1)
autocmd FileType c          set cindent | set tw=0 | noremap <C-u> :ClangFormat<CR>j | let w:m2=matchadd('ErrorMsg', '\%>100v.\+', -1)
autocmd FileType cpp        set cindent | set tw=0 | noremap <C-u> :ClangFormat<CR>j | let w:m2=matchadd('ErrorMsg', '\%>100v.\+', -1)
autocmd FileType cs         set cindent | set tw=0 | map <C-u> i<C-f><Esc>j
"autocmd FileType go         set tw=0 | set expandtab | set ts=2
autocmd FileType go         set tw=0 | set noexpandtab | set ts=2 | set shiftwidth=2
autocmd FileType java       set cindent | set tw=0 | map <C-u> i<C-f><Esc>j | let w:m2=matchadd('ErrorMsg', '\%>100v.\+', -1)
autocmd FileType javascript set cindent | set tw=0 | map <C-u> i<C-f><Esc>j | let w:m2=matchadd('ErrorMsg', '\%>100v.\+', -1)
autocmd FileType nesc       set cindent | set tw=0 | map <C-u> i<C-f><Esc>j
autocmd FileType perl       set cindent | set tw=0 | map <C-u> i<C-f><Esc>j
autocmd FileType proto      set cindent | set tw=0 | map <C-u> i<C-f><Esc>j | let w:m2=matchadd('ErrorMsg', '\%>100v.\+', -1)
autocmd FileType python     set cindent | set tw=0 | set shiftwidth=4 | set expandtab | set ts=4 | map <C-u> i<C-f><Esc>j | let w:m2=matchadd('ErrorMsg', '\%>100v.\+', -1)
autocmd FileType sawzall    set cindent | set tw=0 | map <C-u> i<C-f><Esc>j | let w:m2=matchadd('ErrorMsg', '\%>100v.\+', -1)
autocmd FileType sh         set cindent | set tw=0 | map <C-u> i<C-f><Esc>j | let w:m2=matchadd('ErrorMsg', '\%>100v.\+', -1)
autocmd FileType tex        set spell
autocmd FileType txt        set spell | set nolist
autocmd BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal g'\"" | endif 

" Enable colorscheme.
colorscheme blazer
" Make the background dark gray.
hi Normal ctermfg=white ctermbg=234
" Make searches stand out.
hi Search term=standout ctermfg=0 ctermbg=11 guifg=Blue guibg=Yellow

