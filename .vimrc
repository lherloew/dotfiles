call pathogen#runtime_append_all_bundles()

set nocompatible                " disable vi compatibility (emulation of old bugs)

set title                       " change the terminal's title
set visualbell                  " don't beep
set noerrorbells                " don't beep
set history=1000                " remember more commands and search history
set undolevels=1000             " use many muchos levels of undo

"""" Editor
set number                      " show line numbers
set smartindent                 " indent
set autoindent                  " Do dumb autoindentation when no filetype is set
set ts=3 sts=3 sw=3 expandtab   " set indentation to use 3 spaces for tab
set linebreak                   " wordwrapping at spaces not in middle of words
set listchars=tab:▸\ ,eol:¬     " pretty invisible chars
set anti gfn=Inconsolata\ 12    " set editor font

set pastetoggle=<F2>            " Paste large amount of text with F2 to avoid autoindent

"""" Windows
set splitright                  " New windows open to the right of the current one
set laststatus=2                " always display status line

"""" Search
set incsearch                   " The following lets searches be incremental. /sec instead of /section
set hlsearch                    " Search term highlighting

"""" Mappings
let mapleader=","               " change mapleader from \ to ,
nmap <leader>l :set list!<CR>   " , + l shows invisible chars
nmap <leader>o :MRU<CR>         " , + o opens recent files list
nmap <leader>w :set wrap!<CR>   " , + w toggle word wrap

" TODO test this
nmap <D-[> <<
nmap <D-]> >>
vmap <D-[> <gv
vmap <D-]> >gv

" NERDTree
nmap <C-D> :NERDTreeToggle<CR> " map Ctrl+D to :NERDTreeToggle
let NERDTreeShowHidden=1       " Show hidden files in NERDTree

"""" Backups/Swap Files
" Make sure that the directory where we want to put swap/backup files exists.
if ! len(glob("~/.backup/"))
  echomsg "Backup directory ~/.backup doesn't exist!"
endif

set writebackup                " Make a backup of the original file when writing
set backup                     " and don't delete it after a succesful write.
set backupskip=                " There are no files that shouldn't be backed up.
set updatetime=2000            " Write swap files after 2 seconds of inactivity.
set backupext=.bak             " Backup for "file" is "file~"
set backupdir^=~/.backup       " Backups are written to ~/.backup/ if possible.
set directory^=~/.backup//     " Swap files are also written to ~/.backup, too.
" ^ Here be magic! Quoth the help:
" For Unix and Win32, if a directory ends in two path separators "//" or "\\",
" the swap file name will be built from the complete path to the file with all
" path separators substituted to percent '%' signs.  This will ensure file
" name uniqueness in the preserve directory.

