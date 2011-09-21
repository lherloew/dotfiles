call pathogen#runtime_append_all_bundles()

let mapleader=","        " change mapleader from \ to ,
let NERDTreeShowHidden=1 " Show hidden files in NERDTree

set nocompatible         " disable vi compatibility (emulation of old bugs)
set number               " show line numbers
set smartindent
set autoindent
set incsearch            " The following lets searches be incremental. /sec instead of /section
set linebreak            " wordwrapping at spaces not in middle of words
set history=1000         " remember more commands and search history
set undolevels=1000      " use many muchos levels of undo
set wildignore=*.swp,*.bak,*.pyc,*.class
set title                " change the terminal's title
set visualbell           " don't beep
set noerrorbells         " don't beep
set pastetoggle=<F2>     " Paste large amount of text with F2 to avoid autoindent
set listchars=tab:▸\ ,eol:¬     " pretty invisible chars
set anti gfn=Inconsolata\ 12,\ Envy\ Code\ R\ 10    " set editor font
set directory=~/.vim/swap,.                         " swp files
set ts=3 sts=3 sw=3 expandtab " set indentation to use 3 spaces for tab

"--MAPPINGS---
nmap <silent> <C-D> :NERDTreeToggle<CR>         " map Ctrl+D to :NERDTreeToggle
nmap <leader>l :set list!<CR>                   " , + l shows invisible chars
nmap <leader>o :MRU<CR>                         " , + o opens recent files list

nmap <D-[> <<
nmap <D-]> >>
vmap <D-[> <gv
vmap <D-]> >gv

