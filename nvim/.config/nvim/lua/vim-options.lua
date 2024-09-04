vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.opt.number = true
vim.opt.relativenumber = true

vim.g.mapleader = " "

vim.api.nvim_set_keymap("n", "<Tab>", "<C-w>w", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>q", ":q<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>w", ":w<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<C-Tab>", ":tabnext<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<S-Tab>", ":tabprevious<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<M-Tab>", ":tabnew<CR>", { noremap = true })

vim.g.python3_host_prog = ".venv/bin/python"

vim.opt.guifont = "MesloLGM Nerd Font:h12"
