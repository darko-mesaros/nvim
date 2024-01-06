local opts = { noremap = true, silent = true }

-- local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- nvim tree  toggle
keymap("n", "<leader>e", ":NvimTreeToggle<CR>", opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- Move text up and down
keymap("n", "<A-j>", "<Esc>:m .+1<CR>==gi", opts)
keymap("n", "<A-k>", "<Esc>:m .-2<CR>==gi", opts)

-- Change dark and light theme
-- TODO: Figure out a single key combo for toggles
keymap("n", "<leader>gd", "<Esc>:colorscheme moonfly<CR>", opts)
keymap("n", "<leader>gl", "<Esc>:colorscheme morning<CR>", opts)

-- Toggleterm
keymap("n", "<leader>tf", "<Esc>:ToggleTerm direction=float<CR>", opts)
keymap("n", "<leader>tv", "<Esc>:ToggleTerm size=40 direction=vertical<CR>", opts)
keymap("n", "<leader>tt", "<Esc>:ToggleTerm size=10 direction=horizontal<CR>", opts)
keymap("n", "<leader>tp", "<Esc>:lua _PYTHON_TOGGLE()<CR>", opts)
keymap("n", "<leader>tn", "<Esc>:lua _NODE_TOGGLE()<CR>", opts)
keymap("n", "<leader>tg", "<Esc>:lua _LAZYGIT_TOGGLE()<CR>", opts)

-- Insert --
-- Press jk fast to exit insert mode 
keymap("i", "jj", "<ESC>", opts)
keymap("i", "kj", "<ESC>", opts)

-- visual --
-- stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down -- this does not work
-- but natively S-j/k works in visual mode
-- keymap("v", "<C-j>", ":m .+1<CR>==", opts)
-- keymap("v", "<C-k>", ":m .-2<CR>==", opts)
keymap("v", "p", '"_dP', opts)

-- Visual Block --
-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

keymap("n", "<leader>f", "<cmd>Telescope find_files<cr>", opts)
--keymap("n", "<leader>f", "<cmd>lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({ previewer = true }))<cr>", opts)
keymap("n", "<c-t>", "<cmd>Telescope live_grep<cr>", opts)

-- THIS BREAKS CLEAN INSTALLS - TODO: make sure it can error out and continue installing
--local status_ok, telescope = pcall(require, "telescope.builtin")
--if not status_ok then
--  return
--end
--builtin = require('telescope.builtin')
--vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
--vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
--vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
--vim.keymap.set('n', '<leader>fh', builtin.help_tags, {}) -- vim help
--vim.keymap.set('n', '<leader>fc', builtin.treesitter, {}) -- tree sitter func names, variables
