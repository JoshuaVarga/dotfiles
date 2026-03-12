-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Map kj to <Esc>
local opts = { noremap = true, silent = true }
vim.keymap.set({ "i", "v", "x", "s", "o" }, "kj", "<Esc>", opts)
vim.keymap.set("c", "kj", "<Esc>", opts)
vim.keymap.set("t", "kj", "<Esc>", opts)

-- Fix snacks.terminal not closing
vim.keymap.set("t", "<C-_>", function()
  require("snacks.terminal").toggle()
end, opts)
