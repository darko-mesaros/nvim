"set runtimepath^=~/.vim runtimepath+=~/.vim/after
"    let &packpath = &runtimepath
"    source ~/.vimrc

" general
source $HOME/.config/nvim/general/settings.vim
" filetype configuration
source $HOME/.config/nvim/general/filetypes.vim
" keybindings
source $HOME/.config/nvim/keys/mappings.vim
" plugin installation
source $HOME/.config/nvim/vim-plug/plugins.vim
" plugin configuration
source $HOME/.config/nvim/plug-config/fzf.vim
source $HOME/.config/nvim/plug-config/rainbow.vim
source $HOME/.config/nvim/plug-config/start-screen.vim
source $HOME/.config/nvim/plug-config/coc.vim
source $HOME/.config/nvim/plug-config/quickscope.vim
source $HOME/.config/nvim/plug-config/markdown-preview.vim
" colorizer
lua require'plug-colorizer'
colorscheme archman
highlight Comment cterm=italic gui=italic

" Some color settings
highlight Pmenu ctermbg=24 guibg=#17556F
highlight PmenuSel ctermbg=178 guibg=#FFCC4B ctermfg=0 guifg=Black
highlight Visual ctermbg=178 guibg=#FFCC4B ctermfg=0 guifg=Black
