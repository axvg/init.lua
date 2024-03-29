return {
        "windwp/nvim-ts-autotag",
    dependencies = "nvim-treesitter/nvim-treesitter",
    config = function ()
      require('nvim-ts-autotag').setup({
            filetypes = { "html" , "xml", "eruby", "embedded_template" }
      })
    end,
    lazy = true,
    event = "VeryLazy"
}
