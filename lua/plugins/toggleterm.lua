return {
  {
    'akinsho/toggleterm.nvim',
    version = '*',
    opts = {
      shade_terminals = false,
      persist_mode = false,
    },
  },
  vim.keymap.set('n', '<leader>tt', ':ToggleTerm<CR>', { desc = '[T]oggle [T]erminal' }),
  vim.keymap.set('t', '<Esc>', '<C-\\><C-n>:ToggleTerm<CR>', { desc = 'Exit terminal mode' }),
}
