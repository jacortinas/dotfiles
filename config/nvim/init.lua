-- Basic Configuration
vim.g.mapleader = ';'

vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.swapfile = false
vim.opt.history = 50
vim.opt.ruler = true
vim.opt.showcmd = true
vim.opt.incsearch = true
vim.opt.laststatus = 2
vim.opt.autowrite = false
vim.opt.modelines = 0
vim.opt.modeline = false

vim.opt.number = true
vim.opt.mouse = 'a'
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = false
vim.opt.wrap = true
vim.opt.breakindent = true

-- Plug Configuration

local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.config/nvim/plugged')

Plug '/opt/homebrew/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-rhubarb'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-vinegar'
Plug 'github/copilot.vim'
Plug 'navarasu/onedark.nvim'

vim.call('plug#end')

-- Color Scheme
require('onedark').load()

-- More Configuration

vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.shiftround = true
vim.opt.expandtab = true

vim.opt.listchars = {tab = '» ', trail = '·', extends = '>', precedes = '<', nbsp = '␣'}
vim.opt.joinspaces = false

vim.opt.textwidth = 80
vim.opt.colorcolumn = '80'

-- Key Mappings

vim.keymap.set('n', '<Leader>w', ':write<CR>')
vim.keymap.set('n', '<Leader>q', ':quit<CR>')
vim.keymap.set('n', '<Leader>f', ':Files<CR>')

vim.keymap.set('n', '<C-j>', '<C-w><C-j>')
vim.keymap.set('n', '<C-k>', '<C-w><C-k>')
vim.keymap.set('n', '<C-l>', '<C-w><C-l>')
vim.keymap.set('n', '<C-h>', '<C-w><C-h>')
