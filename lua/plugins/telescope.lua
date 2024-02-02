return { 
    "nvim-telescope/telescope.nvim", 
    tag = "0.1.5", 
    dependencies = { 'nvim-lua/plenary.nvim' }, 
    config = function()
        local builtin = require('telescope.builtin')
        vim.keymap.set("n", "<leader>sf", builtin.find_files, { desc = "[F]iles" })
        vim.keymap.set("n", "<leader>sg", builtin.live_grep, { desc = "[G]rep" })
        vim.keymap.set("n", "<leader>sd", builtin.diagnostics, { desc = "[D]iagnostics" })
    end
}
