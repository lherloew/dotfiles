call pathogen#runtime_append_all_bundles()

let mapleader=","        " change mapleader from \ to ,
let NERDTreeShowHidden=1 " Show hidden files in NERDTree

set nocompatible         " disable vi compatibility (emulation of old bugs)
set number               " show line numbers
set smartindent
set autoindent
set ts=4 sts=4 sw=4 expandtab " tabstop = 4, stoptapstop = 4, shiftwidth = 4, expandtab
set incsearch            " The following lets searches be incremental. /sec instead of /section
set linebreak            " wordwrapping at spaces not in middle of words
set history=1000         " remember more commands and search history
set undolevels=1000      " use many muchos levels of undo
set wildignore=*.swp,*.bak,*.pyc,*.class
set title                " change the terminal's title
set visualbell           " don't beep
set noerrorbells         " don't beep
set pastetoggle=<F2>     " Paste large amount of text with F2 to avoid autoindent

set anti gfn=Inconsolata\ 11,\ Envy\ Code\ R\ 10    " set editor font

"--MAPPINGS---
nmap <silent> <C-D> :NERDTreeToggle<CR>             " map Ctrl+D to :NERDTreeToggle
