set number relativenumber
set formatoptions-=cro "https://vi.stackexchange.com/questions/1983/how-can-i-get-vim-to-stop-putting-comments-in-front-of-new-lines
"set path+=**
set statusline+=\ \-\ %f
let mapleader = ","

nnoremap <Leader>o o<ESC>
nnoremap <Leader>O O<ESC>
imap jj <ESC>


" hi MatchParen ctermbg=black guibg=black
source ~/.config/nvim/coc-settings.vim

call plug#begin('~/.config/nvim/plugged')

" Declare the list of plugins.
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'jackguo380/vim-lsp-cxx-highlight'
Plug 'tpope/vim-sensible'
Plug 'junegunn/seoul256.vim'
Plug '/home/sorenholmpetersen/.config/nvim/plugged/vim-easy-align'
Plug 'flazz/vim-colorschemes'
Plug 'jeffkreeftmeijer/vim-numbertoggle'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'scrooloose/NERDTree'
Plug 'preservim/nerdcommenter'
"Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'honza/vim-snippets'
Plug 'derekwyatt/vim-fswitch'
" List ends here. Plugins become visible to Vim after this call.
call plug#end()

colorscheme gruvbox

" use spaces for tabs  
set expandtab
set shiftwidth=4
set softtabstop=4

" stop automatic comments on next line
set formatoptions-=cro


" fzf settings
" When using rip grep (:Rg), don't grep on file names:
command! -bang -nargs=* Rg call fzf#vim#grep("rg --column --line-number --no-heading --color=always --smart-case ".shellescape(<q-args>), 1, {'options': '--delimiter : --nth 4..'}, <bang>0)
map <C-p> :Files<CR>

map <C-n> :NERDTreeToggle<CR>
"map <Leader>ct <plug>NERDCommenterToggle
map <C-q> <plug>NERDCommenterToggle
        
nmap <Leader>sw :FSHere<CR>
"nmap <Leader>sw :CocCommand clangd.switchSourceHeader<CR>
autocmd BufLeave :w  

 augroup mycppfiles
   au!
   au BufEnter *.h let b:fswitchdst  = 'cpp'
   au BufEnter *.h let b:fswitchlocs = 'rel:../src'
   au BufEnter *.cpp let b:fswitchdst = 'h'
   au BufEnter *.cpp let b:fswitchlocs = "rel:../inc"
 augroup END


" Navigation of splits
map <A-h> <C-w><C-h>
map <A-j> <C-w><C-j>
map <A-k> <C-w><C-k>
map <A-l> <C-w><C-l>

set splitright
set splitbelow 
