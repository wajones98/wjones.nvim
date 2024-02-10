return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		local config = require("nvim-treesitter.configs")
		config.setup({
			ensure_installed = { "lua", "javascript", "go", "terraform", "templ" },
			highlight = { enable = true },
			indent = { enable = true },
			auto_install = true,
		})
	end,
}
