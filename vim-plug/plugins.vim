" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " FZF
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'

    " vim tmux navigator
    Plug 'christoomey/vim-tmux-navigator'

    " Add some color
    Plug 'norcalli/nvim-colorizer.lua'
    Plug 'junegunn/rainbow_parentheses.vim'
    " colorschemes
    Plug 'ParamagicDev/vim-medic_chalk'
    Plug 'humanoid-colors/vim-humanoid-colorscheme'
    Plug 'nanotech/jellybeans.vim'
    Plug 'NLKNguyen/papercolor-theme'
    Plug 'ayu-theme/ayu-vim'

    " lightline - statusbar
    Plug 'itchyny/lightline.vim'
    
    " sneak
    Plug 'justinmk/vim-sneak'

    " devicons
    Plug 'ryanoasis/vim-devicons'

    " startify
    Plug 'mhinz/vim-startify'

    " coc
    Plug 'neoclide/coc.nvim', {'branch': 'release'}

    " terraform
    Plug 'hashivim/vim-terraform'

    " vimwiki
    Plug 'vimwiki/vimwiki'

    " Markdown
    Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }



call plug#end()

" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif
