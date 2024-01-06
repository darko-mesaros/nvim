local status_ok, chatgpt = pcall(require, "chatgpt")
if not status_ok then
  return
end

local home = vim.fn.expand("$HOME")

chatgpt.setup({
    api_key_cmd = "gpg --decrypt ".. home .. "/workspace/keys/chatgpt.txt.gpg"
})
