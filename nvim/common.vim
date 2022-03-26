"Configuration that should be common between native nvim and vscode nvim sessions

"Compensate for nordic keyboard layout
nmap æ :
nmap - /
nmap _ ?

let mapleader = ","

" When yanking, also copy to system clipboard
nnoremap <expr> y (v:register ==# '"' ? '"+' : '') . 'y'
nnoremap <expr> yy (v:register ==# '"' ? '"+' : '') . 'yy'

set ignorecase
set smartcase " If an uppercase is included in search pattern, then ignorecase is disabled.
