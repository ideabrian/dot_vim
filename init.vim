" =============================================================================
" Who: Brandon Bayer (@flybayer) - Thanks to Jeremy Mack (@mutewinter)!
" Description: The Vim Configuration of Champions
" Version: 4.0 - NeoVim only with vim-plug instead of vundle!
" =============================================================================
"
" All of the Plug plugins are loaded with Plug from this file.
source ~/.vim/plug.vim

" Platform (Windows, Mac, etc.) configuration.
source ~/.vim/platforms.vim
" All of the Vim configuration.
source ~/.vim/config.vim
" New commands
source ~/.vim/commands.vim
" All hotkeys, not dependant on plugins, are mapped here.
source ~/.vim/mappings.vim
" Load plugin-specific configuration.
source ~/.vim/plugins.vim
" Small custom functions.
source ~/.vim/functions.vim
" Auto commands.
source ~/.vim/autocmds.vim

" Source custom local config files last to ensure they override previous settings
for file in split(glob('$HOME/.vim/plug_ins/custom/*.vim'), '\n')
  exe 'source' fnameescape(file)
endfor
