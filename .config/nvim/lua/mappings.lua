require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("n", "<C-e>", ":qa!<CR>", { desc = "Quit all without saving" })
map("n", "<C-q>", ":q<CR>", { desc = "Quit all without saving" })
map("n", "<C-v>", ":split<CR>", { desc = "Open split Vertical" })
map("n", "<C-h>", ":vsplit<CR>", { desc = "Open split Horizontal" })
map("n", "<C-s>", ":w<CR>", { desc = "Saving my File" })
map("n", "<Up>", "<C-w>k", { desc = "Move to above split" })   -- Mover hacia arriba
map("n", "<Down>", "<C-w>j", { desc = "Move to below split" }) -- Mover hacia abajo
map("n", "<Left>", "<C-w>h", { desc = "Move to left split" })  -- Mover a la izquierda
map("n", "<Right>", "<C-w>l", { desc = "Move to right split" }) -- Mover a la derecha
