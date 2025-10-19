-- Basic options
vim.o.number = true
vim.o.relativenumber = true
vim.o.cursorline = true
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.splitright = true
vim.o.splitbelow = true

-- Map leader to backslash
vim.g.mapleader = '\\'

-- Add packages
gh = 'https://github.com/'
vim.pack.add({
	gh .. 'catppuccin/nvim',  -- Pretty colors :3
	gh .. 'stevearc/oil.nvim', -- Edit filesystem like a buffer
	gh .. 'nvim-mini/mini.pick', -- Fuzzy find files, help, etc.
})

-- Setup packages
require 'oil'.setup()
require 'mini.pick'.setup() -- `:Pick <finder>`; finders found in `MiniPick.builtin`

-- Appearance
vim.cmd('colorscheme catppuccin')
vim.cmd(':hi statusline guibg=NONE') -- this is highlight groups apparently

-- Bindings
vim.keymap.set('n', '<leader>w', ':w<CR>')
vim.keymap.set('i', '<leader>w', '<C-o>:w<CR>')
vim.keymap.set('n', '<leader>cd', ':cd %:p:h<CR>') -- :p path :h head
-- Terminal
vim.keymap.set('n', '<leader>t', ':belowright vertical terminal<CR>A')
vim.keymap.set('t', '<Esc>', '<C-\\><C-n>')   -- Exit terminal mode with <Esc>
vim.keymap.set('t', '<leader>c', '<C-l>')     -- Clear terminal
-- oil.nvim
vim.keymap.set('n', '<leader>fe', ':Oil<CR>') -- 'fe' for 'file explore'
-- mini.pick
vim.keymap.set('n', '<leader>ff', ':Pick files<CR>')
vim.keymap.set('n', '<leader>fh', ':Pick help<CR>')
vim.keymap.set('n', '<leader>fb', ':Pick buffers<CR>')
