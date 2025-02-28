-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua

vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "1/2 Page Up & Centre" })
vim.keymap.set("n", "<C-m>", "<C-u>zz", { desc = "1/2 Page Down & Centre" })