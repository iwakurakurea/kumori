vim.opt_local.signcolumn = 'yes'

vim.lsp.enable('lua_ls')

vim.keymap.set('n', '<leader>x', ':!lua %<CR>', {buffer=true})
vim.keymap.set('n', '<leader>lf', vim.lsp.buf.format, {buffer=true})
