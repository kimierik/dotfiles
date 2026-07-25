

vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)

    use 'sainnhe/sonokai'

    use 'wbthomason/packer.nvim'
    use 'tpope/vim-fugitive'
    use 'airblade/vim-gitgutter'
    use 'mbbill/undotree'

    use {
        'nvim-treesitter/nvim-treesitter',
        branch = 'main',
        run = ':TSUpdate',
        requires = { 'neovim-treesitter/treesitter-parser-registry' },
        config = function()
            require('nvim-treesitter').setup()

            -- Install parsers on startup
            require('nvim-treesitter').install({ 'c', 'lua', 'vim', 'vimdoc', 'query' })

            -- Enable treesitter highlighting with filesize guard
            vim.api.nvim_create_autocmd('FileType', {
                callback = function(args)
                    local max_filesize = 100 * 1024 -- 100 KB
                    local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(args.buf))
                    if ok and stats and stats.size > max_filesize then
                        return
                    end
                    pcall(vim.treesitter.start)
                end,
            })
        end
    }

    use {
          'nvim-telescope/telescope.nvim',
        -- or                            , branch = '0.1.x',
          requires = { {'nvim-lua/plenary.nvim'} }
    }

end)
