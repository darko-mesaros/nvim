-- TODO: figure out pcall loading
--[[
local status_ok, qs = pcall(require, "quick-scope")
if not status_ok then
  print("foo")
  return
end   
]]--

-- highlight on keypress
vim.g.qs_highlight_on_keys = {"f","F","t","T"}
vim.g.qs_highlight_on_keys = {"f","F"}
