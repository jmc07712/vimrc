set nocompatible              " be iMproved, required
set exrc
set encoding=utf-8

filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Setting font and line numbers
set number
set guifont=Fira\ Mono:h12,Source_Code_Pro:h12,Bitstream_Ver_Sans_Mono:h11

" Plugins
Plugin 'scrooloose/nerdtree'
Plugin 'mileszs/ack.vim'
Plugin 'michaeljsmith/vim-indent-object'
Plugin 'maxbrunsfeld/vim-yankstack'
Plugin 'itchyny/lightline.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'morhetz/gruvbox'
Plugin 'dense-analysis/ale'
Plugin 'vim-scripts/mru.vim'
Plugin 'vim-scripts/bufexplorer.zip'
Plugin 'tpope/vim-commentary'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'vim-syntastic/syntastic'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General Vim Options
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set tabstop=4
set shiftwidth=4
set expandtab
set nu
set autochdir " sets the cwd to whatever file is in view.
set bs=2
set ruler
set smartcase
set incsearch
set magic
set showmatch
set mat=2
set noerrorbells
set novisualbell
set t_vb=
set tm=500
set nobackup
set nowb
set noswapfile
set smarttab
set ai
set si
set wrap
set laststatus=2
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l\ \ Column:\ %c
set guioptions-=r
set guioptions-=R
set guioptions-=l
set guioptions-=L
syntax on
set history=500

" For persistent undo
try
    set undodir=~/.vim_runtime/temp_dirs/undodir
    set undofile
catch
endtry

" Use the the_silver_searcher if possible (much faster than Ack)
if executable('ag')
  let g:ackprg = 'ag --vimgrep --smart-case'
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Keymapping for Vim and Plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader=','

map <leader>o :BufExplorer<cr>
map <leader>f :MRU<CR>
map <leader>nn :NERDTreeToggle<cr>
map <leader>nb :NERDTreeFromBookmark
map <leader>nf :NERDTreeFind<cr>
map <leader>g :Ack
map <leader>q :e ~/buffer<cr>

" Non Plugin Mappings
map <leader>w :w!<cr>
map <space> /
map <c-space> ?
map <silent> <leader><cr> :noh<cr>
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Mappings to insert parenthesis/brackets/etc
vnoremap <C-p> <esc>`>a)<esc>`<i(<esc>
vnoremap <C-b> <esc>`>a]<esc>`<i[<esc>
vnoremap <C-e> <esc>`>a}<esc>`<i{<esc>
vnoremap <C-l> <esc>`>a"<esc>`<i"<esc>

" Mappings for tabs
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove
map <leader>t<leader> :tabnext<cr>

" When you press <leader>r you can search and replace the selected text
vnoremap <silent> <leader>r :call VisualSelection('replace', '')<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Syntastic (syntax checker)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ale_linters = {
\   'javascript': ['jshint'],
\   'python': ['flake8'],
\   'go': ['go', 'golint', 'errcheck'],
\   'c++': ['gcc', 'g++'],
\}

nmap <silent> <leader>a <Plug>(ale_next_wrap)

""""""""""""""""""""""""""""""
" => bufExplorer plugin
""""""""""""""""""""""""""""""
let g:bufExplorerDefaultHelp=0
let g:bufExplorerShowRelativePath=1
let g:bufExplorerFindActive=1
let g:bufExplorerSortBy='name'
map <leader>o :BufExplorer<cr>


""""""""""""""""""""""""""""""
" => Misc Options for Plugins
""""""""""""""""""""""""""""""
let g:ale_set_highlights = 0

" Only run linting when saving the file
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_enter = 0


""""""""""""""""""""""""""""""
" => Gruvbox Options
""""""""""""""""""""""""""""""
let g:airline_theme='gruvbox'
let g:gruvbox_contrast_dark='hard'
colorscheme gruvbox