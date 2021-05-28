vim.cmd('packadd packer.nvim')
--vim.cmd('packadd nvim-lspconfig')
--vim.cmd('packadd nvim-treesitter')

return require('packer').startup(function()
    use 'wbthomason/packer.nvim'
    use 'vim-airline/vim-airline'
    use 'vim-airline/vim-airline-themes'
    use 'morhetz/gruvbox'
    --rust formatter
    use 'rust-lang/rust.vim'
    --go helper
    use 'fatih/vim-go'
    use {'junegunn/fzf',
        run = function() vim.fn['fzf#install'](0) end}
    use 'junegunn/fzf.vim'
    use 'neovim/nvim-lspconfig'
    use 'nvim-treesitter/nvim-treesitter'
    use 'nvim-lua/completion-nvim'
    use 'nvim-lua/diagnostic-nvim'
    use 'shougo/deoplete-lsp'
    use {'shougo/deoplete.nvim',
        run = function() vim.fn['remote#host#UpdateRemotePlugins'](0) end}
    use '9mm/vim-closer'
    use 'ojroques/nvim-lspfuzzy'
end)
