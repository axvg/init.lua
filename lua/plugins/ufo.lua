return {
  'kevinhwang91/nvim-ufo',
  dependencies = { 'kevinhwang91/promise-async' },
  event = 'VeryLazy',
  opts = {},
  config = function()
    vim.o.foldlevel = 99 -- Using ufo provider need a large value, feel free to decrease the value
    require('ufo').setup()
  end,
}

