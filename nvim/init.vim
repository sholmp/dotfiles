runtime common.vim

if exists('g:vscode')
  runtime vscode.vim
else
  " stuff that would bog down vscode
  runtime native.vim
endif


function! Cond(cond, ...)
  let opts = get(a:000, 0, {})
  return a:cond ? opts : extend(opts, { 'on': [], 'for': [] })
endfunction

call plug#begin()
Plug 'easymotion/vim-easymotion', Cond(!exists('g:vscode'))

Plug 'asvetliakov/vim-easymotion', Cond(exists('g:vscode'), { 'as': 'vsc-easymotion' })
call plug#end()


" Below 5 lines taken from https://github.com/vscode-neovim/vscode-neovim/issues/352
" The default mappings from easymotion README don't seem to work
let g:EasyMotion_do_mapping = 0 " Disable default mappings
let g:EasyMotion_smartcase = 1

nmap <Leader>s <Plug>(easymotion-s)
nmap <Leader>q <Plug>(easymotion-s2)