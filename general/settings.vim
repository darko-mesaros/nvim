map <Space> <Leader>
set iskeyword+=-            " treat dash separated words as a word text object

syntax enable               " enables syntax hightlighting
set hidden                  " required to keep multiple buffers open multiple buffers
set nowrap                  " do not wrap lines - display long lines as a single line
set encoding=utf-8          " encoding displayed
set pumheight=10            " makes popup menu smaller
set fileencoding=utf-8      " encoding writtent to a file
set shiftwidth=2            " tabspacing to 2 characters for indents
set smarttab                " smart tabbing will realize you have 2 vs 4
set expandtab               " convert tabs to spaces
set smartindent             " enables smart indenting
set background=dark         " tell vim what is the background color (theme needs)
set cursorline              " enable highlighting of the cursor line
set laststatus=2            " always display the status line
set clipboard=unnamed       " set the clipboard to pbcopy
set lcs+=space:.            " set the blank character to '.'
set formatoptions-=cro      " Stop newline continution of comments
set t_Co=256                " Support 256 colors
set termguicolors           " sets term gui colors
