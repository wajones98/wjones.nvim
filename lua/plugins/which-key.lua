return {
    "folke/which-key.nvim",
    event = "VeryLazy",
    init = function()
        vim.o.timeout = true
        vim.o.timeoutlen = 300
    end,
    config = function()
        local wk = require("which-key")
        wk.register({
            ["<leader>"] = {
                s = { name = "+[S]earch" },
                G = { name = "+[G]it" },
                g = { name = "+[G]o" },
                c = { name = "+[C]ode" },
            },
        })
    end,
}
