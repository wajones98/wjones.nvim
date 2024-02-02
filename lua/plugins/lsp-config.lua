return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end,
    },
    {
        "williamboman/mason-lspconfig.nvim",
        opts = {
            auto_install = true,
        },
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Lsp Hover" })
            vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, { desc = "[D]efinition" })
            vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, { desc = "[R]eferences" })
            vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "[A]ction" })
        end
    }
}
