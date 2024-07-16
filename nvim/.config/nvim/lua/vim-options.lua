vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set nu")

vim.g.mapleader = " "

vim.api.nvim_set_keymap("n", "<C-Tab>", "<C-w>w", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "q", ":q<CR>", {})
vim.api.nvim_set_keymap("n", "w", ":w<CR>", {noremap = true})

vim.g.python3_host_prog = ".venv/bin/python"

vim.opt.guifont = "MesloLGM Nerd Font:h12"
