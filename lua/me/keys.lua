vim.g.mapleader = " "
-- vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>d", function() if (vim.api.nvim_buf_get_option(0, "filetype")=="netrw") then vim.api.nvim_exec("close", false) else vim.api.nvim_exec(":Vexplore", false) end end, {})
