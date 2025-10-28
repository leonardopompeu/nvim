-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
vim.keymap.set("n", "<leader>rr", ":call jukit#send#section(0)<CR>", { desc = "Run cell" })
vim.keymap.set("n", "<leader>rs", ":call jukit#send#until_current_section()<CR>", { desc = "Run to cell" })

-- Navegação rápida no modo visual (10 linhas por vez)
vim.keymap.set("v", "J", "10j", { desc = "Descer 10 linhas" })
vim.keymap.set("v", "K", "10k", { desc = "Subir 10 linhas" })
