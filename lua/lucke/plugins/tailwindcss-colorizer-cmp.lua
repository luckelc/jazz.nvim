return {
  'roobert/tailwindcss-colorizer-cmp.nvim',
  -- optionally, override the default options:
  config = function()
    -- Set up the tailwindcss-colorizer-cmp plugin with custom options
    require('tailwindcss-colorizer-cmp').setup {
      color_square_width = 2,
    }

    -- Configure CMP to use the Tailwind CSS colorizer formatter
    require('cmp').config.formatting = {
      format = require('tailwindcss-colorizer-cmp').formatter,
    }
  end,
}
