return {
  {
    'tanvirtin/monokai.nvim',
    name = 'monokai',
    init = function()
      vim.cmd.colorscheme 'monokai'

      -- You can configure highlights by doing something like:
      vim.cmd.hi 'Comment gui=none'
    end,
  },
  { 'sainnhe/sonokai', name = 'sonokai' },

  {
    'rose-pine/neovim',
    name = 'rose-pine',
  },
  { 'zootedb0t/citruszest.nvim', name = 'citruszest' },
  {
    'rebelot/kanagawa.nvim',
    name = 'kanagawa',
    transparent = true, -- Enable transparent background
    theme = 'dragon', -- Select theme style: "wave", "dragon", or "lotus"
  },
  {
    'nyngwang/nvimgelion',
    name = 'nvimgelion',
  },
  { 'HoNamDuong/hybrid.nvim', name = 'hybrid' },
}
