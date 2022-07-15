local function map(mode, lhs, rhs, opts)
  local options = {noremap = true}
  if opts then options = vim.tbl_extend('force', options, opts) end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end
local opts = {noremap = true, silent = true}

map('i', '<C-j>', '<ESC>', opts)
map('v', '<C-j>', '<ESC>', opts)


-- save with ctrl-s
map('n', '<C-s>', '<cmd>update<CR>', opts)
map('i', '<C-s>', '<C-o><cmd>update<CR>', opts)
map('v', '<C-s>', '<C-c><cmd>update<CR>', opts)

-- clipboard keybindings
map('', '<leader>y', '"+y', opts)
map('', '<leader>yy', '"+yy', opts)
map('', '<leader>p', '"+p', opts)

-- move using hjkl in insert mode using alt+hjkl
map('i', '<A-h>', '<C-o>h', opts)
map('i', '<A-l>', '<C-o>l', opts)
map('i', '<A-j>', '<C-o>j', opts)
map('i', '<A-k>', '<C-o>k', opts)

-- saves having to press ctrl for commands in normal mode
map('n', ';', ':', opts)

-- <Tab> to navigate the completion menu
map('i', '<S-Tab>', 'pumvisible() ? "\\<C-p>" : "\\<Tab>"', {expr = true})
map('i', '<Tab>', 'pumvisible() ? "\\<C-n>" : "\\<Tab>"', {expr = true})

-- lsp keybinding
map('n', '<leader>,', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>')
map('n', '<leader>;', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>')
map('n', '<leader>a', '<cmd>lua vim.lsp.buf.code_action()<CR>')
map('n', '<leader>d', '<cmd>lua vim.lsp.buf.definition()<CR>')
map('n', '<leader>f', '<cmd>lua vim.lsp.buf.formatting()<CR>')
map('n', '<leader>h', '<cmd>lua vim.lsp.buf.hover()<CR>')
map('n', '<leader>m', '<cmd>lua vim.lsp.buf.rename()<CR>')
map('n', '<leader>r', '<cmd>lua vim.lsp.buf.references()<CR>')
map('n', '<leader>s', '<cmd>lua vim.lsp.buf.document_symbol()<CR>')

-- todo: setup better build system that will work across multiple different languages
map('n', '<leader>b', '<cmd>!cargo r<CR>')
map('n', '<leader>c', '<cmd>!cargo c<CR>')

-- insets a c style comment at the end of the line, only works in languages that use / for comments
map('n', '<leader>/', '<S-$>a<Tab>/*  */<C-o>h<C-o>h')
