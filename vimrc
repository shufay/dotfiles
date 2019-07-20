call plug#begin()

" Colorschemes
Plug 'morhetz/gruvbox'
Plug 'owickstrom/vim-colors-paramount'
Plug 'fxn/vim-monochrome'
Plug 'sjl/badwolf'

" Python support
Plug 'davidhalter/jedi-vim'

" Utility
"Plug 'scrooloose/nerdtree'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf'
Plug 'terryma/vim-multiple-cursors'
Plug 'Shougo/deoplete.nvim'
Plug 'zchee/deoplete-jedi', { 'for': 'python' }

" Generic programming support
Plug 'Townk/vim-autoclose'
Plug 'neomake/neomake'

call plug#end()
filetype plugin indent on

" Colorscheme configuration
set background=dark
colo goodwolf
hi NonText      ctermbg=none
hi Normal       ctermbg=none
hi LineNr       ctermbg=232 ctermfg=239
hi DiffChange   ctermbg=232
hi Comment      ctermbg=none
hi clear SignColumn

set tabstop=4
set shiftwidth=4    " 1 tab == 4 spaces
set expandtab   " expand tabs into spaces
set smarttab
set autoindent
set smartindent
set hidden
set splitright
set matchtime=0

set shortmess+=c
set completeopt=menuone,menu,longest
set pumheight=15    " Limit height to 15 max
set clipboard=unnamedplus
set pastetoggle=<F2>
set fillchars+=vert:\|
syntax enable

set backspace=2
set encoding=utf8
set ffs=unix,dos,mac        " use unix as default filetype
set number                  " enable display of line numbers
set cursorline              " show cursor line
set scrolloff=3             " better scrolling semantics

" Search configuration
set wildmenu
set wildmode=longest:full,full
set ignorecase              " ignore case when searching
set incsearch
set hlsearch                " highlight searches
set noshowmode              " don't show -- INSERT --

set showmatch               " show matching brackets
set laststatus=2
set lazyredraw
set visualbell

" Nerdtree configuration 
"autocmd vimenter * NERDTree

" Key Mappings
" <TAB>: completion.
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

" Insert mode completion
imap <c-x><c-k> <plug>(fzf-complete-word)
imap <c-x><c-f> <plug>(fzf-complete-path)
imap <c-x><c-j> <plug>(fzf-complete-file-ag)
imap <c-x><c-l> <plug>(fzf-complete-line)
