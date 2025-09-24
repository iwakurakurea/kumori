vim.lsp.start({
	cmd = { 'tinymist' },
	filetypes = { 'typst' },
})

vim.keymap.set('n', '<leader>lf', vim.lsp.buf.format)
