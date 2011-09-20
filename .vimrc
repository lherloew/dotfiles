"solarized stuff
"call pathogen#runtime_append_all_bundles()
"syntax enable
"set background=light
"colorscheme solarized

" disable vi compatibility (emulation of old bugs)
set nocompatible

"show line numbers
set number
"tabstop = 4, stoptapstop = 4, shiftwidth = 4, expandtab
set smartindent
set autoindent
set ts=4 sts=4 sw=4 expandtab

"enable spellchecker
"set spell

"The following lets searches be incremental.  So in normal mode, /sec will go to the first 'section', for example.  I don't have to type /section for that:
set incsearch

"wordwrapping at spaces not in middle of words
set linebreak
