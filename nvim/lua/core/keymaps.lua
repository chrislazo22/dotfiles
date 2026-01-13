-- set leader to space " "
vim.g.mapleader = " "

local keymap = vim.keymap

----- General Keymaps -----
-- exit insert mode with "jk" and disable escape
keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })
keymap.set("i", "<Esc>", "<Nop>")

-- save with leader w, save quit with leader wq and quit with leader q
keymap.set("n", "<leader>w", ":w<CR>", { noremap = true, silent = true, desc = "Save file" })
keymap.set("n", "<leader>wq", ":wq<CR>", { noremap = true, silent = true, desc = "Save and quit" })
keymap.set("n", "<leader>q", ":q!<CR>", { noremap = true, silent = true, desc = "Quit without saving" })

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

-- force consistent command usage
-- Fix common typos (for commands we're not blocking)
vim.cmd("cnoreabbrev W! w!")
vim.cmd("cnoreabbrev Q! q!")
vim.cmd("cnoreabbrev Qall! qall!")
vim.cmd("cnoreabbrev Wa wa")
vim.cmd("cnoreabbrev Qall qall")

-- Block :w, :q, :wq variants to enforce leader key bindings
vim.cmd([[
  cnoreabbrev <expr> w (getcmdtype() == ':' && getcmdline() == 'w') ? 'echo "Use <leader>w instead!"' : 'w'
  cnoreabbrev <expr> W (getcmdtype() == ':' && getcmdline() == 'W') ? 'echo "Use <leader>w instead!"' : 'W'

  cnoreabbrev <expr> q (getcmdtype() == ':' && getcmdline() == 'q') ? 'echo "Use <leader>q instead!"' : 'q'
  cnoreabbrev <expr> Q (getcmdtype() == ':' && getcmdline() == 'Q') ? 'echo "Use <leader>q instead!"' : 'Q'

  cnoreabbrev <expr> wq (getcmdtype() == ':' && getcmdline() == 'wq') ? 'echo "Use <leader>wq instead!"' : 'wq'
  cnoreabbrev <expr> Wq (getcmdtype() == ':' && getcmdline() == 'Wq') ? 'echo "Use <leader>wq instead!"' : 'Wq'
  cnoreabbrev <expr> wQ (getcmdtype() == ':' && getcmdline() == 'wQ') ? 'echo "Use <leader>wq instead!"' : 'wQ'
  cnoreabbrev <expr> WQ (getcmdtype() == ':' && getcmdline() == 'WQ') ? 'echo "Use <leader>wq instead!"' : 'WQ'
]])
