

vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)

    use 'sainnhe/sonokai'

    use 'wbthomason/packer.nvim'
    use 'tpope/vim-fugitive'
    use 'airblade/vim-gitgutter'
    use 'mbbill/undotree'

    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

    use {
          'nvim-telescope/telescope.nvim', tag = '0.1.8',
        -- or                            , branch = '0.1.x',
          requires = { {'nvim-lua/plenary.nvim'} }
    }

end)
