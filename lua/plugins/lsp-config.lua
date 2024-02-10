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
			ensure_installed = { "lua_ls", "gopls", "terraformls", "htmx", "templ" },
		},
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			local lspconfig = require("lspconfig")

			vim.filetype.add({ extension = { templ = "templ" } })
			lspconfig.templ.setup({
				capabilities = capabilities,
			})
			local templ_format = function()
				local bufnr = vim.api.nvim_get_current_buf()
				local filename = vim.api.nvim_buf_get_name(bufnr)
				local cmd = "templ fmt " .. vim.fn.shellescape(filename)

				vim.fn.jobstart(cmd, {
					on_exit = function()
						-- Reload the buffer only if it's still the current buffer
						if vim.api.nvim_get_current_buf() == bufnr then
							vim.cmd("e!")
						end
					end,
				})

				local errors = vim.diagnostic.get(nil, { severity = vim.diagnostic.severity.ERROR })
				if #errors == 0 then
					cmd = "templ generate " .. vim.fn.shellescape(filename)

					vim.fn.jobstart(cmd)
				end
			end
			vim.api.nvim_create_autocmd({ "BufWritePre" }, { pattern = { "*.templ" }, callback = templ_format })

			lspconfig.tsserver.setup({
				capabilities = capabilities,
			})
			lspconfig.html.setup({
				capabilities = capabilities,
				filetypes = { "html", "templ" },
			})
			lspconfig.htmx.setup({
				capabilities = capabilities,
				filetypes = { "html", "templ" },
			})
			lspconfig.lua_ls.setup({
				capabilities = capabilities,
			})
			lspconfig.gopls.setup({
				capabilities = capabilities,
			})
			lspconfig.terraformls.setup({
				capabilities = capabilities,
			})

			vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Lsp Hover" })
			-- Go to
			vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, { desc = "[D]efinition" })
			vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, { desc = "[R]eferences" })
			vim.keymap.set("n", "<leader>gr", vim.lsp.buf.implementation, { desc = "[I]mplementation" })

			-- Code
			vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "[A]ction" })
			vim.keymap.set("n", "<leader>cr", vim.lsp.buf.rename, { desc = "[R]ename" })
			vim.keymap.set("n", "<leader>cd", vim.lsp.buf.type_definition, { desc = "[D]efinition" })
		end,
	},
}
