local status_ok, tmuxnav = pcall(require, "nvim-tmux-navigation")
if not status_ok then
	return
end

tmuxnav.setup{
  disable_when_zoomed = true,
  keybindings = {
    left ="<C-h>",
    down ="<C-j>",
    up ="<C-k>",
    right ="<C-l>",
    last_active ="<C-\\>",
    next ="<C-Space>",
  }
}

