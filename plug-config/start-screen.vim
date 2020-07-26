let g:startify_session_dir = '~/.config/nvim/session'

let g:startify_lists = [
          \ { 'type': 'files',     'header': ['   Files']                        },
          \ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()] },
          \ { 'type': 'sessions',  'header': ['   Sessions']                     },
          \ { 'type': 'bookmarks', 'header': ['   Bookmarks']                    },
          \ ]

let g:startify_bookmarks = [
          \ { 'w': '~/.config/i3/config' },
          \ { 'i': '~/.config/nvim/init.vim' },
          \ { 'p': '~/.config/polybar/config' },
          \ { 'f': '~/.config/fish/config.fish' },
          \ { 'r': '~/.Xresources' },
          \ ]
