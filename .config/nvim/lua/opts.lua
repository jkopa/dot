local cmd = vim.cmd
local fn = vim.fn
local g = vim.g

local indent = 4

vim.o.ruler = false
vim.o.wildmode = 'list:longest'
vim.o.hidden = true
vim.o.joinspaces = false
vim.o.completeopt = 'menuone,noinsert,noselect'

vim.wo.number = true

vim.wo.wrap = false

vim.wo.wrap = false
vim.o.tabstop = indent
vim.bo.tabstop = indent
vim.o.softtabstop = indent
vim.bo.softtabstop = indent
vim.o.shiftwidth = indent
vim.bo.shiftwidth = indent
vim.o.autoindent = true
vim.bo.autoindent = true
vim.o.expandtab = true
vim.bo.expandtab = true

g.mapleader = ' '

cmd('language en_GB.utf-8')
--vim.g.spell.spelllang = 'en_gb'
vim.o.listchars = 'tab:|-,nbsp:~,trail:$'
vim.wo.list = true





-- Plugin options
g.rustfmt_autosave = 1
g['deoplete#enable_at_startup'] = 1
