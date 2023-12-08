return {
    "nvimtools/none-ls.nvim",
    config = function()
        local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
        require("null-ls").setup({
            sources = {
                require("null-ls").builtins.formatting.stylua,
                require("null-ls").builtins.formatting.prettier,
                require("null-ls").builtins.diagnostics.eslint,
                require("null-ls").builtins.formatting.gofmt,
                require("null-ls").builtins.completion.spell,
                -- Add other sources as needed
            },
            on_attach = function(client, bufnr)
                if client.supports_method("textDocument/formatting") then
                    vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
                    vim.api.nvim_create_autocmd("BufWritePre", {
                        group = augroup,
                        buffer = bufnr,
                        callback = function()
                            -- on 0.8, you should use vim.lsp.buf.format({ bufnr = bufnr }) instead
                            -- on later neovim version, you should use vim.lsp.buf.format({ async = false }) instead
                            -- vim.lsp.buf.formatting_sync()
                            vim.lsp.buf.format({
                                async = false,
                                filter = function(c)
                                    return c.name == "null-ls"
                                end,
                            })
                        end,
                    })
                end
            end,
        })
    end,
}
