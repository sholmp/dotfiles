" Compensate for nordic keyboard layout
nmap æ :
nmap - /
nmap _ ?


imap jj <ESC>

set hidden " Freely move between buffers without doing :w 

set expandtab
set shiftwidth=2
set softtabstop=2

" Line numbering
set number
set norelativenumber
au InsertEnter * set norelativenumber 
au InsertLeave * set relativenumber

au FocusLost *.c,*.cpp,*.py,*.html :w "Save currently focused file


