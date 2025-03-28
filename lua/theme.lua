return {
  -- If you change this config you have to re compile using :KanagawaCompile
  'rebelot/kanagawa.nvim',
  priority = 1000,
  config = function()
    require('kanagawa').setup {
      compile = true,
      commentStyle = { italic = true },
      terminalColors = true,
      dimInactive = false,
      theme = 'dragon',
      background = {
        dark = 'dragon',
      },
    }
    vim.cmd.colorscheme 'kanagawa-dragon'
  end,
}
