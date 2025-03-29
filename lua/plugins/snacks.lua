return {
  {
    'folke/snacks.nvim',
    priority = 1000,
    lazy = false,
    ---@type snacks.Config
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
      bigfile = { enabled = true },
      dashboard = { enabled = true },
      explorer = { enabled = true },
      indent = { enabled = true },
      input = { enabled = true },
      picker = { enabled = true },
      notifier = { enabled = true },
      quickfile = { enabled = true },
      scope = { enabled = true },
      scroll = { enabled = true },
      statuscolumn = { enabled = true },
      words = { enabled = true },
      terminal = { enable = true },
    },
    keys = {
      {
        '<leader>tt',
        function()
          Snacks.terminal()
        end,
        desc = '[T]oggle [T]erminal',
      },
      {
        '<c-/>',
        function()
          Snacks.terminal()
        end,
        desc = 'which_key_ignore',
        mode = 't',
      },
      {
        '<leader>te',
        function()
          local util = require 'lspconfig.util'
          local bufname = vim.api.nvim_buf_get_name(0)
          local root = util.root_pattern '.git'(bufname) or vim.fn.getcwd()
          require('mini.files').open(root)
        end,
        desc = '[T]oggle [E]xplorer',
      },
      {
        '<leader>n',
        function()
          Snacks.picker.notifications()
        end,
        desc = '[N]otification History',
      },
      {
        '<leader>gb',
        function()
          Snacks.picker.git_branches()
        end,
        desc = '[G]it [B]ranches',
      },
      {
        '<leader>gl',
        function()
          Snacks.picker.git_log()
        end,
        desc = '[G]it [L]og',
      },
      {
        '<leader>gL',
        function()
          Snacks.picker.git_log_line()
        end,
        desc = '[G]it [L]og Line',
      },
      {
        '<leader>gs',
        function()
          Snacks.picker.git_status()
        end,
        desc = '[G]it [S]tatus',
      },
      {
        '<leader>gS',
        function()
          Snacks.picker.git_stash()
        end,
        desc = '[G]it [S]tash',
      },
      {
        '<leader>gd',
        function()
          Snacks.picker.git_diff()
        end,
        desc = '[G]it [D]iff (Hunks)',
      },
      {
        '<leader>gf',
        function()
          Snacks.picker.git_log_file()
        end,
        desc = '[G]it [L]og File',
      },
      {
        '<leader>gg',
        function()
          Snacks.lazygit()
        end,
        desc = '[G]o [G]it',
      },
    },
  },
}
