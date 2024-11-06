return {
  'nvim-neo-tree/neo-tree.nvim',
  branch = 'v3.x',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  opts = {
    window = {
      width = 30, -- Set the default NeoTree window width to 30 columns
      auto_expand_width = true,
      position = 'right',
    },
  },
}
