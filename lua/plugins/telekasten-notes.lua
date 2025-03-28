return {
  {
    'renerocksai/telekasten.nvim',
    dependencies = { 'nvim-telescope/telescope.nvim' },
    opts = {
      home = vim.fn.expand '~/notes',

      -- Launch panel if nothing is typed after <leader>z
      vim.keymap.set('n', '<leader>n', '<cmd>Telekasten panel<CR>', { desc = '[N]otes' }),

      -- Most used functions
      vim.keymap.set('n', '<leader>nf', '<cmd>Telekasten find_notes<CR>', { desc = '[N]otes [F]ind' }),
      vim.keymap.set('n', '<leader>ns', '<cmd>Telekasten search_notes<CR>', { desc = '[N]otes [S]earch' }),
      vim.keymap.set('n', '<leader>nd', '<cmd>Telekasten goto_today<CR>', { desc = '[N]otes To[d]ay' }),
      vim.keymap.set('n', '<leader>nn', '<cmd>Telekasten new_note<CR>', { desc = '[N]otes [N]ew' }),
    },
  },
}
