return {
    "kdheepak/lazygit.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    config = function()
        vim.keymap.set(
            "n", "<leader>Gw", ":LazyGit<CR>", 
            { silent = true, desc = "Open LazyGit [W]indow" }
        )
    end
}
