if exists('g:vundle_installing_plugins')
  Plugin 'mileszs/ack.vim'
  finish
endif


" Easily start an Ack search
nnoremap <leader>a :Ack!<space>

if executable('ag')
  let g:ackprg = 'ag --nogroup --nocolor --column'
endif
