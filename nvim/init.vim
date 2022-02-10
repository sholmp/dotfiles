" 
source common.vim

if exists('g:vscode')
  source vscode.vim
else
  " stuff that would bog down vscode
  source native.vim
endif

