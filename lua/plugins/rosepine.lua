return {
  'rose-pine/neovim',
  name = 'rose-pine',
  lazy = false,
  priority = 1000,
  config = function()
    require('rose-pine').setup({
      dark_variant = 'moon',
      disable_italics = true,
      disable_background = true,
      disable_float_background = true,
      bold_vert_split = false,
      disable_italics = true,
    })
    vim.cmd('colorscheme rose-pine')
  end,
}
