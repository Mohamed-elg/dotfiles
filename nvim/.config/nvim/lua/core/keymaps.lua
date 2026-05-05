-- Default keymaps
vim.keymap.set("i", "<M-leader>", "<ESC>", { noremap = true, desc = "Normal mode" })
vim.keymap.set("n", "<leader>q", "q", { noremap = true, desc = "Macro" })
vim.keymap.set("n", "m", ":w<CR>", { noremap = true, desc = "Write" })
vim.keymap.set("n", "q", ":q<CR>", { noremap = true, desc = "Quit" })
vim.keymap.set("n", "<leader>wq", ":wq<CR>", { noremap = true, desc = "Write and quit" })
vim.keymap.set("n", "<leader>wqa", ":wqa<CR>", { noremap = true, desc = "Write and quit" })
vim.keymap.set("n", "<leader>+", "<C-a>", { desc = "Num +" })
vim.keymap.set("n", "<leader>-", "<C-x>", { desc = "Num -" })

vim.keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })
vim.keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })
vim.keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" })
vim.keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" })

vim.keymap.set("i", "<M-j>", "<Down>", {})
vim.keymap.set("i", "<M-k>", "<Up>", {})
vim.keymap.set("i", "<M-l>", "<Right>", {})
vim.keymap.set("i", "<M-h>", "<Left>", {})

vim.keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" })
vim.keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" })
vim.keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" })
vim.keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" })
vim.keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" })

vim.keymap.set("n", "<leader>ct", "<cmd>CopilotChatOpen<CR>", { desc = "Open Chat" })
