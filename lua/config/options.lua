-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set:
-- https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.g.python3_host_prog = vim.fn.expand("~/.venvs/nvim/bin/python")

vim.opt.termguicolors = true

-- Use system clipboard
vim.opt.clipboard = "unnamedplus"

-- Copilot: use <Tab> to accept suggestion
-- Disable Copilot's default tab mapping to avoid conflicts
vim.g.copilot_no_tab_map = true
vim.g.copilot_assume_mapped = true

vim.keymap.set("i", "<Tab>", function()
  local ok, out = pcall(vim.fn["copilot#Accept"], "\r") -- \r = <CR>
  if ok and out ~= "" then
    return out
  end
  return "\t"
end, { expr = true, silent = true, replace_keycodes = false })

-- Force xsel (optional; overrides clipboard provider)
vim.g.clipboard = {
  name = "xsel",
  copy = {
    ["+"] = "xsel --clipboard --input",
    ["*"] = "xsel --primary --input",
  },
  paste = {
    ["+"] = "xsel --clipboard --output",
    ["*"] = "xsel --primary --output",
  },
  cache_enabled = 1,
}
