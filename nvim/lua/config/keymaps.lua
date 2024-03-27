-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

map("n", "<C-t>", function()
    local path = vim.fn.expand('%:h') .. '/'
    vim.fn.jobstart("foot -D " .. path, { detach = true })
end)
