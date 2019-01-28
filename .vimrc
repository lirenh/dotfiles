set nocompatible        "Turn off Vi compatibility
set backspace=indent,eol,start    " Allow backspacing over everything in insert mode.
filetype plugin on
syntax on
set clipboard=unnamedplus  "CLIPBOARD buffer for X"
"colorscheme desert
" filetype plugin indent on  "Indentation rules for different filetypes

" DIMENSIONS
"set lines=50        " Vim starts with this many lines
set columns=80      " You can change these numbers
"set textwidth=80    " This sets the 'virtual' line number

" INFORMATION
set showcmd         " Show (partial) command in status line
set showmode        " Show the current mode
"set laststatus=2    " Always show status line
"set statusline=%.40F%=%m\ %Y\ Line:\ %3l/%L[%3p%%]

" NAVIGATION
"set nu              " Set line numbering
"set scrolloff=5     " Keep at least 5 lines above/below cursor
set mouse=a         " Enable mouse usage in all modes
"set mousehide       " Hide the mouse when typing

" SEARCHING
set ignorecase      " Do case insensitive matching
set smartcase       " Unless you explicitly search for upper case
set incsearch       " Incremental search
set hlsearch        " Highlight searches
"set showmatch       " Show matching parentheses

" TABS
set expandtab       " Uses spaces instead of tabs
set tabstop=4       " Each tab is 4 spaces
set shiftwidth=4    " Sets the >> and << width
set autoindent

" BACKUPS
"set nobackup        " remove backup files
"set noswapfile      " remove swap files
