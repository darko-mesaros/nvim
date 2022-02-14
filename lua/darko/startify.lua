local g = vim.g

g.startify_custom_header = {
'',
'',
'                                       ██            ',
'                                      ░░             ',
'    ███████   █████   ██████  ██    ██ ██ ██████████ ',
'   ░░██░░░██ ██░░░██ ██░░░░██░██   ░██░██░░██░░██░░██',
'    ░██  ░██░███████░██   ░██░░██ ░██ ░██ ░██ ░██ ░██',
'    ░██  ░██░██░░░░ ░██   ░██ ░░████  ░██ ░██ ░██ ░██',
'    ███  ░██░░██████░░██████   ░░██   ░██ ███ ░██ ░██',
'   ░░░   ░░  ░░░░░░  ░░░░░░     ░░    ░░ ░░░  ░░  ░░ ',
'',
'',
}
g.webdevicons_enable_startify = 1
g.startify_enable_special = 0
g.startify_session_autoload = 1
g.startify_session_delete_buffers = 1
g.startify_change_to_vcs_root = 1
g.startify_fortune_use_unicode = 1
g.startify_session_persistence = 1


g.startify_lists = {
  { type = 'dir', header = { "   Current Directory "..vim.fn.getcwd()..":" } },
  { type = 'bookmarks', header = { '   Bookmarks' } }
}

g.startify_bookmarks = {
  { i = '~/repos/nvim/init.lua'},
  { z = '~/.zshrc'},
  { w = '~/.config/qtile/config.py' },
}
