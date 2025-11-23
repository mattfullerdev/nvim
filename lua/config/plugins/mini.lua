return {
  {
    'echasnovski/mini.nvim',
    config = function()
      local statusLine = require 'mini.statusline'
      statusLine.setup { use_icons = true }
      local icons = require 'mini.icons'
      icons.setup ()
    end
  },
}
