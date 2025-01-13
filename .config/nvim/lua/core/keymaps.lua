-- set leader to space " "
vim.g.mapleader = " "

local keymap = vim.keymap

----- General Keymaps -----
-- exit insert mode with "jk" and disable escape
keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })
keymap.set("i", "<Esc>", "<Nop>")

-- nvim completion list navigation
keymap.set("c", "<C-j>", "<C-n>", { noremap = true, silent = true })
keymap.set("c", "<C-k>", "<C-p>", { noremap = true, silent = true })

-- clear search highlight
keymap.set("n", "<leader><leader>", ":nohl<CR>", { desc = "Clear search highlights" })

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>seq", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<leader>sc", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

-- buffer management
keymap.set("n", "<leader>x", "<cmd>bn<CR>", { desc = "Next buffer" })
keymap.set("n", "<leader>z", "<cmd>bp<CR>", { desc = "Previous buffer" })
keymap.set("n", "<leader>c", "<cmd>bd<CR>", { desc = "Close buffer" })

-- center cursor on middle of screen during search
keymap.set("n", "n", "nzzzv", { noremap = true, silent = true })

-- because I'm a tad bit crazy
vim.cmd("cnoreabbrev W! w!")
vim.cmd("cnoreabbrev Q! q!")
vim.cmd("cnoreabbrev Qall! qall!")
vim.cmd("cnoreabbrev Wq wq")
vim.cmd("cnoreabbrev Wa wa")
vim.cmd("cnoreabbrev wQ wq")
vim.cmd("cnoreabbrev WQ wq")
vim.cmd("cnoreabbrev W w")
vim.cmd("cnoreabbrev Q q")
vim.cmd("cnoreabbrev Qall qall")
