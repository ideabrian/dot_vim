" =============================================================================
" Plug Name: ag.vim
" Description: balhbalhbalh
" URL: https://github.com/rking/ag.vim
" =============================================================================

" Don't use AG on Windows because of Silver Search difficulties
if !has('win32') && !has('win64')
  if exists('g:plug_loading_plugins')
    Plug 'rking/ag.vim'
    finish
  endif

  let g:ag_prg="rg --no-heading --vimgrep -g '!*lock' -g '!*flow-typed*' -g '!*__snapshots__*' "

  nnoremap <silent> <leader>as :AgFromSearch!<CR>
  nnoremap <leader>a :Ag!<space>
endif
