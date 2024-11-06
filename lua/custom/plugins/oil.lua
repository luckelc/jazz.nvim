return {
  'stevearc/oil.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' }, -- optional dependency

  ---@module 'oil'
  ---@type oil.SetupOpts
  opts = {
    -- Custom keymaps and options for oil.nvim setup can go here
    view_options = {
      show_hidden = true,
    },
  },
}
