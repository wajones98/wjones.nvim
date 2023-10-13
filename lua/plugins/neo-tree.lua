vim.keymap.set('n', '<leader>sF', ':Neotree filesystem reveal float<CR>', { desc = '[S]earch [F]ilesystem' })

return {
    'nvim-neo-tree/neo-tree.nvim',
    branch = 'v3.x',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-tree/nvim-web-devicons',
      'MunifTanjim/nui.nvim',
    }
}
