return {
    {
        "williamboman/mason.nvim",
        lazy = false,
        config = function()
            require("mason").setup()
        end
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = {"lua_ls", "tsserver", "pyright"}
            })
        end
    },
    {
        "neovim/nvim-lspconfig",
        lazy = false,
        config = function()
            local lspconfig = require("lspconfig")
            lspconfig.tsserver.setup({})
            lspconfig.pyright.setup({})
            lspconfig.html.setup({})
            lspconfig.lua_ls.setup({})
            vim.keymap.set("n", "<C-space>", vim.lsp.buf.hover, {})
            vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
            vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
            vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
            vim.keymap.set("n", "<leader>rn", vim.lsp.buf.code_action, {})
            vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, {})
        end
  }
}
