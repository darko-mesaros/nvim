local colorscheme = "tokyonight"

-- tokyonight config options
if colorscheme == "tokyonight" then
  vim.g.tokyonight_style = "night"
end

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  vim.notify("Colorscheme " .. colorscheme .. " not installed!")
  return
end
