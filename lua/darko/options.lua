-- General nvim options - get more info :help optionskkj
local options = {
  backup = false,                       -- creates a backup file
  cmdheight = 2,                        -- more space in the neovim command line
  conceallevel = 0,                     -- this enables the visibility of `` in MD files
  hlsearch = true,                      -- highlighs search patterns
  ignorecase = true,                    -- ignores case in search
  splitbelow = true,                    -- all horizontal splits go below current window
  splitright = tjrue,                    -- all vertical splits go right of current window
  swapfile = false,                     -- creates a swapfile (nah)
  timeoutlen = 100,                     -- time wait for mapped sequence in milliseconds
  undofile = true,                      -- enable persistent undofile
  updatetime = 300,                     -- faster autocompletion (default time is 4000ms)
  writebackup = false,                  -- if a file is being edited on, prevent writing
  number = true,                        -- enable line numbers
  relativenumber = true,                -- enable relative line numbers
  signcolumn = "yes",                   -- always show the sign column otherwise it would shift the text (?)
  scrolloff = 8,                        -- keeps the cursor N spaces away from top or bottom when scrolling
  sidescrolloff = 8,                    -- -"- s/top bottom/side/g
  hidden = true,                        -- required to keep multiple buffers open multiple buffers
  wrap = false,                         -- do not wrap lines - display long lines as a single line
  encoding = "utf-8",                   -- encoding displayed
  pumheight = 10,                	-- makes popup menu smaller
  fileencoding = "utf-8",               -- encoding writtent to a file
  shiftwidth = 2,                	-- tabspacing to 2 characters for indents
  smarttab = true,                      -- smart tabbing will realize you have 2 vs 4
  expandtab = true,                     -- convert tabs to spaces
  smartindent = true,                   -- enables smart indenting
  background = "dark",                  -- tell vim what is the background color (theme needs)
  cursorline = true,                    -- enable highlighting of the cursor line
  laststatus = 2,                	-- always display the status line
  clipboard = "unnamed",                -- set the clipboard to pbcopy
  termguicolors = true,                 -- sets term gui colors
}

vim.opt.shortmess:append "c"

for k, v in pairs(options) do
  vim.opt[k] = v
end

-- some additional vim commands (not sure why they are not options)
-- this is just an example that you can do stuff in vimscript also
vim.cmd "set whichwrap+=<,>,[,],h,l"
vim.cmd [[set iskeyword+=-]]            -- makes words split by dashes (-) a single word
