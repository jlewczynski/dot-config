vim.g.mapleader = " "

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

local vo = vim.opt

vo.guicursor = ""

vo.nu = true
vo.relativenumber = true

vo.tabstop = 2
vo.softtabstop = 2
vo.shiftwidth = 2
vo.expandtab = true

vo.smartindent = true

vo.wrap = false

vo.swapfile = false
vo.backup = false
vo.undodir = os.getenv('HOME') .. '/.local/nvim/undodir'
vo.undofile = true

vo.hlsearch = false
vo.incsearch = true

vo.scrolloff = 8
vo.signcolumn = 'yes'
vo.isfname:append('@-@')

vo.updatetime = 50

vo.colorcolumn = '100'

vim.cmd.highlight({ 'ExtraWhitespace', 'ctermbg=red', 'guibg=red' })
vim.cmd.match({ 'ExtraWhitespace', '/\\s\\+$/' })
