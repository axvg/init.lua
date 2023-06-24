vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", function() if (vim.api.nvim_buf_get_option(0, "filetype")=="netrw") then vim.api.nvim_exec("close", false) else vim.api.nvim_exec(":Vexplore", false) end end, {})
