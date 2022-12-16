# nvim
My neovim dotfiles

## Future considerations 
- Toggle Term: https://github.com/akinsho/toggleterm.nvim
- Project: https://github.com/ahmedkhalf/project.nvim
- Which key: https://github.com/folke/which-key.nvim

## Some Useful shortcuts

### General
`jj` - Escape
`kj` - Escape (also)
`f` - Highlight characters we can move to in a line

### Telescope
`<leader>ff` - find files
`<leader>fg` - find text in files (grep)
`<leader>fb` - search in open buffers (yikes)
`<leader>fh` - search through help tags
`<leader>fc` - treesitter function names, variables

### Comments
In NORMAL mode
`gcc` - Toggles the comment in the current line using linewise comments
`gbc` - Toggles the comment in the current line using blockwise comments
In VISUAL mode:
`gc` - Toggles the region using linewise comments
`gb` - Toggles the region using blockwise comments

### LSP
In NORMAL mode
`gl` - when hovering on a line with an error/warning/info - will show a popup with the info

### nvim-tree
`<leader>e` - Toggle nvim tree

In the tree view
`v` - opens the file in vertical split
`s` - opens the file in horizontal split
`H` - toggles hidden files
`r` - rename a file
`c` - copy file
`x` - cut file
`p` - paste file
`a` - create file - if we leave a trailing `/` it will create a dir
`R` - refresh
`D` - Trash file
`r` - rename file
`y` - copy file name
`Y` - copy file path

