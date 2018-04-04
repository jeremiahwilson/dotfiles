" Jeremiah Wilson
" jeremiah.james.wilson@gmail.com

" Plugins 
" Vundle Stuff
set nocompatible " required
filetype off " required
set rtp+=~/.vim/bundle/Vundle.vim " set runtime path to include bundle 
call vundle#begin() " initialize

" Plugins Themselves
Plugin 'VundleVim/Vundle.vim' " let Vundle manage Vundle (required)
Plugin 'scrooloose/nerdtree' " The NERD Tree https://vimawesome.com/plugin/nerdtree-red
Plugin 'bling/vim-airline' " vim-ariline https://vimawesome.com/plugin/vim-airline
Plugin 'vim-airline/vim-airline-themes' " vim-airline themes 
Plugin 'morhetz/gruvbox' " gruvbox theme
Plugin 'lervag/vimtex' " vimtex
Plugin 'scrooloose/syntastic' " Syntastic
" Plugin 'ying17zi/vim-live-latex-preview' " https://lukesmith.xyz/latex

" Plugin Config
map <C-n> :NERDTreeToggle<CR> 
let g:vimtex_view_method = 'skim' " use Skim for LaTeX

" Finish Vundle Stuff 
call vundle#end() " required
filetype plugin indent on "requireed
" Finish Plugins

" Colors 
syntax enable " syntax coloring
set background=dark " theme of colorscheme
if has("gui_running")
        set background=light " light background in GUI only
endif
colorscheme gruvbox
let g:airline_theme='gruvbox' " theme of status bar (airline plugin)

" Spaces and Tabs 
set tabstop=4 " number of visual spaces per tab
set softtabstop=4 " number of spaces in tab when editing
set expandtab " tabs are spaces

" UI 
filetype indent on " load filetype specific indent files located in ~/.vim/indent/
set number " line numbers
set showcmd " shows last command in bottom right
set cursorline " highlight the line your cursor is on
set wildmenu " visual autocomplete for command menu
set lazyredraw " redraw only when necessary
set showmatch " highlight matching parenthesis

" Searching 
set incsearch " search as characters are entered
set hlsearch " highlight matches
set ignorecase " ignore case when searching
set smartcase  " only ignore case when searching in all lowercase
nnoremap <leader><space> :nohlsearch<CR> " deletes highlighted matches when you press \  space

" Folding 
set foldenable " enable folding
set foldlevelstart=10 " all folds start open (probably never gonna have 10 nested folds)
set foldmethod=indent " folds based on indent level
"set foldnestmax=10 " maximum number of nested folds

" Misc
set clipboard=exclude:.* " prevents vim from opening xquartz

