" set tabstop = 4
set number relativenumber
set formatoptions-=cro "https://vi.stackexchange.com/questions/1983/how-can-i-get-vim-to-stop-putting-comments-in-front-of-new-lines
let mapleader = ","

" nmap <Leader>f :Files<CR>
" nmap <leader>s :w<CR>
imap jj <ESC>
map <C-n> :NERDTreeToggle<CR>


" hi MatchParen ctermbg=black guibg=black
source ~/.config/nvim/coc-settings.vim

call plug#begin('~/.config/nvim/plugged')

" Declare the list of plugins.
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tpope/vim-sensible'
Plug 'junegunn/seoul256.vim'
Plug '/home/sorenholmpetersen/.config/nvim/plugged/vim-easy-align'
Plug 'flazz/vim-colorschemes'
Plug 'jeffkreeftmeijer/vim-numbertoggle'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'scrooloose/NERDTree'
Plug 'preservim/nerdcommenter'
" Plug 'tpope/vim-commentary'
" List ends here. Plugins become visible to Vim after this call.
call plug#end()

colorscheme gruvbox

" use spaces for tabs  
set expandtab
set shiftwidth=4
set softtabstop=4
 

" fzf settings
" When using rip grep (:Rg), don't grep on file names:
command! -bang -nargs=* Rg call fzf#vim#grep("rg --column --line-number --no-heading --color=always --smart-case ".shellescape(<q-args>), 1, {'options': '--delimiter : --nth 4..'}, <bang>0)
map <C-f> :Files<CR>

" nmap <C-l> :exec &nu==&rnu? "se nu!" : "se rnu!"

"map <Leader>ct <plug>NERDCommenterToggle
map <C-q> <plug>NERDCommenterToggle
