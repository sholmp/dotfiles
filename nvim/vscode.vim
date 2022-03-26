" vim configuration used when nvim is launched by vscode neovim extension

nmap <C-b> call :VSCodeCall("workbench.action.toggleSidebarVisibility")<CR>
" the two don't work:
" nmap <Leader>R call :VSCodeCall("editor.action.marker.next")<CR>
" nmap <Leader>R <cmd> echo 'foobazbar'<CR>