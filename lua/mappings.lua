require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set
local opts = { noremap = true, silent = true }
map("i", "<C-s>", "<esc><cmd>w<cr>i")

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
-- Move line up
map("n", "<A-Up>", ":m .-2<CR>==", opts)
map("i", "<A-Up>", "<Esc>:m .-2<CR>==gi", opts)
map("v", "<A-Up>", ":m '<-2<CR>gv=gv", opts)

-- Move line down
map("n", "<A-Down>", ":m .+1<CR>==", opts)
map("i", "<A-Down>", "<Esc>:m .+1<CR>==gi", opts)
map("v", "<A-Down>", ":m '>+1<CR>gv=gv", opts)

map("n", "<leader>v", "<esc><cmd>VimtexView<cr>", {desc = "Vimtex view file pdf"})

