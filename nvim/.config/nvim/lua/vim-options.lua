vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set nu")
vim.g.mapleader = " "
vim.api.nvim_set_keymap("n", "<C-Tab>", "<C-w>w", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<space>q", ":q<CR>", {})
vim.opt.guifont = "MesloLGM Nerd Font:h12"
