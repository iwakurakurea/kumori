-- Basic options
vim.o.number = true
vim.o.relativenumber = true
vim.o.cursorline = true
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.splitright = true
vim.o.splitbelow = true

-- Map leader to backslash
vim.g.mapleader = "\\"

-- Add packages
gh = "https://github.com/"
vim.pack.add({
	gh.."catppuccin/nvim",
	gh.."kelly-lin/ranger.nvim",
	gh.."nvim-mini/mini.pick",
})

-- Setup packages
require "ranger-nvim".setup({
	enable_cmds = true,
	replace_netrw = true
})
require "mini.pick".setup()

-- Appearance
vim.cmd("colorscheme catppuccin")
vim.cmd(":hi statusline guibg=NONE") -- this is highlight groups apparently

-- Bindings
vim.keymap.set('n', '<leader>w', ":w<CR>")
vim.keymap.set('n', '<leader>cd', ":cd %:p:h<CR>") -- :p path :h head
-- Terminal
vim.keymap.set('n', '<leader>t', ":belowright vertical terminal<CR>A")
vim.keymap.set('t', '<Esc>', '<C-\\><C-n>')
vim.keymap.set('t', '<leader>c', '<C-l>')
-- ranger.nvim
vim.keymap.set('n', '<leader>r', ':Ranger<CR>')
-- mini.pick 
vim.keymap.set('n', '<leader>ff', ':Pick files<CR>')
vim.keymap.set('n', '<leader>fh', ':Pick help<CR>')
vim.keymap.set('n', '<leader>fb', ':Pick buffers<CR>')

