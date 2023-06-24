vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", function() if (vim.api.nvim_buf_get_option(0, "filetype")=="netrw") then vim.api.nvim_exec("close", false) else vim.api.nvim_exec(":Vexplore", false) end end, {})
vim.api.nvim_set_keymap('n', '<leader>j', '*``cgn', { noremap = true, silent = true }) -- change word, . to change next ocurrence
vim.api.nvim_set_keymap('n', '<F2>', '<cmd>lua vim.lsp.buf.rename()<cr>', { noremap = true, silent = true }) -- rename symbols
