-- Basic options
vim.o.number = true
vim.o.cursorline = true
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.splitright = true

-- Map leader to backslash
vim.g.mapleader = "\\"

-- Add packages
gh = "https://github.com/"
vim.pack.add({
	{ src = gh.."catppuccin/nvim" },
	{ src = gh.."kelly-lin/ranger.nvim" },
	{ src = gh.."nvim-mini/mini.pick" },
})

-- Setup packages
require("ranger-nvim").setup({
	enable_cmds = true,
	replace_netrw = true
})
require("mini.pick").setup()

-- Settings
function compmode() -- "composition mode"
	vim.cmd("setlocal linebreak")
	vim.cmd("setlocal wrapmargin=2")
	vim.cmd("setlocal spell")
	vim.cmd("setlocal spelllang=en_us")
end

function nocompmode() -- disable "composition mode"
	vim.cmd("setlocal nolinebreak")
	vim.cmd("setlocal wrapmargin=0")
	vim.cmd("setlocal nospell")
end

-- Appearance
vim.cmd("colorscheme catppuccin")
vim.cmd(":hi statusline guibg=NONE")

-- Bindings
-- Terminal
vim.keymap.set('n', '<leader>t', ":belowright vertical terminal<CR>")
vim.keymap.set('t', '<Esc>', '<C-\\><C-n>')
-- Composition mode (spellchecking and autowrap)
vim.keymap.set('n', '<leader>s', compmode)
vim.keymap.set('n', '<leader>ns', nocompmode)
-- ranger.nvim
vim.keymap.set('n', '<leader>r', ':Ranger<CR>')
-- mini.pick 
vim.keymap.set('n', '<leader>ff', ':Pick files<CR>')
vim.keymap.set('n', '<leader>fh', ':Pick help<CR>')
vim.keymap.set('n', '<leader>fb', ':Pick buffers<CR>')

