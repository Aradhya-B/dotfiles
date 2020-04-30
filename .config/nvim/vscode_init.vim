" key-mappings
let mapleader=","
nnoremap <leader><space> :nohlsearch<CR>
nnoremap E $
nnoremap B ^
nnoremap <silent> <leader>t :<C-u>call VSCodeNotify('workbench.action.toggleSidebarVisibility')<CR>
nnoremap <silent> <leader>f :<C-u>call VSCodeNotify('revealInExplorer')<CR>
nnoremap <silent> <leader>rf :<C-u>call VSCodeNotify('editor.action.rename')<CR>
nnoremap <silent> <leader>c :<C-u>call VSCodeNotify('editor.action.commentLine')<CR>
nnoremap <silent> <leader>b :<C-u>call VSCodeNotify('workbench.action.terminal.toggleTerminal')<CR>
nnoremap <silent> <C-l> :<C-u>call VSCodeNotify('workbench.action.focusRightGroup')<CR>
nnoremap <silent> <C-h> :<C-u>call VSCodeNotify('workbench.action.focusLeftGroup')<CR>
nnoremap <silent> <C-j> :<C-u>call VSCodeNotify('workbench.action.focusBelowGroup')<CR>
nnoremap <silent> <C-k> :<C-u>call VSCodeNotify('workbench.action.focusAboveGroup')<CR>
nnoremap <silent> <leader>vs :<C-u>call VSCodeNotify('workbench.action.splitEditorRight')<CR>
nnoremap <silent> <leader>hs :<C-u>call VSCodeNotify('workbench.action.splitEditorDown')<CR>
nnoremap <silent> <leader>P :<C-u>call VSCodeNotify('workbench.action.files.copyPathOfActiveFile')<CR>
nnoremap <silent> <leader>q :<C-u>call VSCodeNotify('workbench.action.closeActiveEditor')<CR>
nnoremap <silent> <leader>Q :<C-u>call VSCodeNotify('workbench.action.closeEditorsInGroup')<CR>
nnoremap <silent> <leader>w :<C-u>call VSCodeNotify('workbench.action.files.save')<CR>
nnoremap <silent> <S-l> :<C-u>call VSCodeNotify('workbench.action.nextEditor')<CR>
nnoremap <silent> <S-h> :<C-u>call VSCodeNotify('workbench.action.previousEditor')<CR>
nnoremap <silent> zm :<C-u>call VSCodeNotify('editor.foldRecursively')<CR>
nnoremap <silent> zM :<C-u>call VSCodeNotify('editor.foldAll')<CR>
nnoremap <silent> zo :<C-u>call VSCodeNotify('editor.unfoldRecursively')<CR>
nnoremap <silent> zO :<C-u>call VSCodeNotify('editor.unfoldAll')<CR>
