"pathogen instructions (must be before autocmd detection, to be sure place at the start)

call pathogen#runtime_append_all_bundles()
call pathogen#helptags()


" Configuration file for vim
set modelines=0         " CVE-2007-2438

" Normally we use vim-extensions. If you want true vi-compatibility
" remove change the following statements
set nocompatible        " Use Vim defaults instead of 100% vi compatibility
set backspace=2         " more powerful backspacing

" Don't write backup file if vim is being called by "crontab -e"
au BufWrite /private/tmp/crontab.* set nowritebackup nobackup
" Don't write backup file if vim is being called by "chpass"
au BufWrite /private/etc/pw.* set nowritebackup nobackup

" da qui in poi sono aggiunte da me

" attivo identificazione automatica della sintassi
syntax on

" set numero abbastanza elevato di undo possibili
set undolevels=1000

" attiva numero righe
set number

" hard tab puri
set shiftwidth=2
set tabstop=2

" vim-latex-live-preview settings
autocmd Filetype tex setl updatetime=1
let g:livepreview_previewer = 'open -a Preview'
