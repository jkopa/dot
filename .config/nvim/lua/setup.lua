require 'lspconfig'.rust_analyzer.setup({})
require 'lspconfig'.ccls.setup({})
require 'nvim-treesitter.configs'.setup({ensure_installed = 'maintained', highlight = {enable = true}})
require 'lspfuzzy'.setup({})
