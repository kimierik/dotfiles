


vim.api.nvim_create_user_command(
    'Dashgen',

    function(opts)
        local num=tonumber(opts.fargs[1])
        local str=opts.fargs[2]
        local row, col = unpack(vim.api.nvim_win_get_cursor(0))
        vim.api.nvim_buf_set_text(0, row - 1, col, row - 1, col, 
            {
                'V' .. 
                string.rep('-',num) .. 
                str .. 
                string.rep('-',num) .. 
                'V' 
            }
        )

    end,
    {nargs='*', bang=true})



local buffer_term = require('buffer-term')

buffer_term.setup() -- default config

vim.keymap.set('t', '<Esc>', '<C-\\><C-n>')
vim.keymap.set({ 'n', 't' }, '<f7>', function() buffer_term.toggle('a') end)
vim.keymap.set({ 'n', 't' }, '<f8>', function() buffer_term.toggle('b') end)


