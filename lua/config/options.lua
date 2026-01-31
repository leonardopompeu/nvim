-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.g.python3_host_prog = vim.fn.expand("~/.venvs/nvim/bin/python")
vim.g.lazyvim_colorscheme = "catppuccin"
vim.opt.termguicolors = true

-- Use system clipboard
vim.opt.clipboard = "unnamedplus"

-- Force xsel
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
