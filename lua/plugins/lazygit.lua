-- [[ Configure LazyGit ]]

vim.keymap.set('n', '<leader>gg', ':LazyGit<CR>', {
  silent = true,
  desc = 'Open LazyGit window'
})


return {
      "kdheepak/lazygit.nvim",
      -- optional for floating window border decoration
      dependencies = {
          "nvim-lua/plenary.nvim",
      },
  }
