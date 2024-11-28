vim.cmd("set tabstop=4")
vim.cmd("set autoindent")
vim.cmd("set noexpandtab")
vim.cmd("set shiftwidth=4")
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.termguicolors = true
vim.opt.background = "dark"
vim.opt.clipboard:append("unnamedplus")
vim.opt.splitright = true
vim.splitbelow = true

vim.g.mapleader = " "

vim.api.nvim_set_keymap("i", "<M-leader>", "<ESC>", { noremap = true, desc = "Normal mode" })
vim.api.nvim_set_keymap("n", "<leader>qq", ":q<CR>", { noremap = true, desc = "Quit" })
vim.api.nvim_set_keymap("n", "q", ":q<CR>", { noremap = false, desc = "Quit" })
vim.api.nvim_set_keymap("n", "<leader>qa", ":qa<CR>", { noremap = true, desc = "Quit all" })
vim.api.nvim_set_keymap("n", "<leader>ww", ":w<CR>", { noremap = true, desc = "Write" })
vim.api.nvim_set_keymap("n", "m", ":w<CR>", { noremap = true, desc = "Write" })
vim.api.nvim_set_keymap("n", "<leader>wq", ":wq<CR>", { noremap = true, desc = "Write and quit" })
vim.api.nvim_set_keymap("n", "<leader>wqa", ":wqa<CR>", { noremap = true, desc = "Write and quit" })
vim.api.nvim_set_keymap("n", "<leader>+", "<C-a>", { desc = "Num +" })
vim.api.nvim_set_keymap("n", "<leader>-", "<C-x>", { desc = "Num -" })

vim.api.nvim_set_keymap("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
vim.api.nvim_set_keymap("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
vim.api.nvim_set_keymap("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
vim.api.nvim_set_keymap("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

vim.api.nvim_set_keymap("i", "<M-j>", "<Down>", {}) -- split window vertically
vim.api.nvim_set_keymap("i", "<M-k>", "<Up>", {}) -- split window horizontally
vim.api.nvim_set_keymap("i", "<M-l>", "<Right>", {}) -- make split windows equal width & height
vim.api.nvim_set_keymap("i", "<M-h>", "<Left>", {}) -- close current split window

vim.api.nvim_set_keymap("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
vim.api.nvim_set_keymap("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
vim.api.nvim_set_keymap("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
vim.api.nvim_set_keymap("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
vim.api.nvim_set_keymap("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab

vim.g.python3_host_prog = ".venv/bin/python"

vim.opt.guifont = "MesloLGM Nerd Font:h12"
vim.fn.sign_define("DiagnosticSignError", { text = " ", texthl = "DiagnosticSignError" })
vim.fn.sign_define("DiagnosticSignWarn", { text = " ", texthl = "DiagnosticSignWarn" })
vim.fn.sign_define("DiagnosticSignInfo", { text = " ", texthl = "DiagnosticSignInfo" })
vim.fn.sign_define("DiagnosticSignHint", { text = "󰌵", texthl = "DiagnosticSignHint" })
