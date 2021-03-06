let g:startify_session_dir = '~/.config/nvim/session'

let g:startify_lists = [
          \ { 'type': 'files',     'header': ['   Files']                        },
          \ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()] },
          \ { 'type': 'sessions',  'header': ['   Sessions']                     },
          \ { 'type': 'bookmarks', 'header': ['   Bookmarks']                    },
          \ ]

let g:startify_bookmarks = [
          \ { 'i': '~/.config/nvim/init.vim' },
          \ { 'o': '~/.config/openbox/rc.xml' },
          \ { 'z': '~/.zshrc' },
          \ { 'r': '~/.Xresources' },
          \ { 'c': '~/.config/conky/conky.conf' },
          \ ]
