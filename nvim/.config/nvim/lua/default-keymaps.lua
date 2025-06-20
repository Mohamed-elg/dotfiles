-- Default keymaps
vim.api.nvim_set_keymap("i", "<M-leader>", "<ESC>", { noremap = true, desc = "Normal mode" })
vim.api.nvim_set_keymap("n", "<leader>q", "q", { noremap = true, desc = "Macro" })
vim.api.nvim_set_keymap("n", "m", ":w<CR>", { noremap = true, desc = "Write" })
vim.api.nvim_set_keymap("n", "q", ":q<CR>", { noremap = true, desc = "Quit" })
vim.api.nvim_set_keymap("n", "<leader>wq", ":wq<CR>", { noremap = true, desc = "Write and quit" })
vim.api.nvim_set_keymap("n", "<leader>wqa", ":wqa<CR>", { noremap = true, desc = "Write and quit" })
vim.api.nvim_set_keymap("n", "<leader>+", "<C-a>", { desc = "Num +" })
vim.api.nvim_set_keymap("n", "<leader>-", "<C-x>", { desc = "Num -" })

vim.api.nvim_set_keymap("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })
vim.api.nvim_set_keymap("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })
vim.api.nvim_set_keymap("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" })
vim.api.nvim_set_keymap("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" })

vim.api.nvim_set_keymap("i", "<M-j>", "<Down>", {})
vim.api.nvim_set_keymap("i", "<M-k>", "<Up>", {})
vim.api.nvim_set_keymap("i", "<M-l>", "<Right>", {})
vim.api.nvim_set_keymap("i", "<M-h>", "<Left>", {})

vim.api.nvim_set_keymap("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" })
vim.api.nvim_set_keymap("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" })
vim.api.nvim_set_keymap("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" })
vim.api.nvim_set_keymap("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" })
vim.api.nvim_set_keymap("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" })

vim.api.nvim_set_keymap("n", "<leader>ct", "<cmd>CopilotChatOpen<CR>", { desc = "Open Chat" })
