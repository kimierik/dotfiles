require("config")
require("config.packer")
require("config.keybinds")

local root_markers = {'gleam.toml', '.git', 'Cargo.toml'}
local root_dir = vim.fs.root(0, root_markers)

vim.lsp.config('*', {
  capabilities = {
    textDocument = {
      semanticTokens = {
        multilineTokenSupport = true,
      }
    }
  },
  root_markers = { '.git' },
})

vim.diagnostic.config({
    signs=false,
    virtual_text = {
        prefix = ""  -- Disable the "W" and "E" markers
    }
})

--vim.lsp.enable('luals')
vim.lsp.enable('zls')
vim.lsp.enable('clang')
vim.lsp.enable('rs')
vim.lsp.enable('python')
vim.lsp.enable('racket')
vim.lsp.enable('godot')
vim.lsp.enable('golang')







vim.api.nvim_create_autocmd('LspAttach', {
  callback = function(event)
    local bufmap = function(mode, rhs, lhs)
      vim.keymap.set(mode, rhs, lhs, {buffer = event.buf})
    end

    local client_id = vim.tbl_get(event, 'data', 'client_id')
    if client_id == nil then
      return
    end
    local client = assert(vim.lsp.get_client_by_id(event.data.client_id))

    if client:supports_method('textDocument/completion') then
      -- Optional: trigger autocompletion on EVERY keypress. May be slow!
       local chars = {}; for i = 32, 126 do table.insert(chars, string.char(i)) end
       client.server_capabilities.completionProvider.triggerCharacters = chars
      vim.lsp.completion.enable(true, client.id, event.buf, {autotrigger = true})
    end


    vim.o.completeopt = "menuone,noinsert,noselect"

    -- Key mappings for navigating and selecting completions
    vim.api.nvim_set_keymap('i', '<Tab>', [[pumvisible() ? "\<C-n>" : "\<Tab>"]], { expr = true, noremap = true })
    vim.api.nvim_set_keymap('i', '<S-Tab>', [[pumvisible() ? "\<C-p>" : "\<S-Tab>"]], { expr = true, noremap = true })
    vim.api.nvim_set_keymap('i', '<CR>', [[pumvisible() ? "\<C-y>" : "\<CR>"]], { expr = true, noremap = true })

    -- Manually trigger completion if needed (this can be helpful for debugging)
    vim.api.nvim_set_keymap('i', '<C-Space>', [[<cmd>lua vim.lsp.buf.completion()<CR>]], { noremap = true, silent = true })



    -- These keymaps are the defaults in Neovim v0.11
    bufmap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<cr>')
    bufmap('n', 'grr', '<cmd>lua vim.lsp.buf.references()<cr>')
    bufmap('n', 'gri', '<cmd>lua vim.lsp.buf.implementation()<cr>')
    bufmap('n', 'grn', '<cmd>lua vim.lsp.buf.rename()<cr>')
    bufmap('n', 'gra', '<cmd>lua vim.lsp.buf.code_action()<cr>')
    bufmap('n', 'gO', '<cmd>lua vim.lsp.buf.document_symbol()<cr>')
    bufmap({'i', 's'}, '<C-s>', '<cmd>lua vim.lsp.buf.signature_help()<cr>')

    -- These are custom keymaps
    bufmap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<cr>')
    bufmap('n', 'grt', '<cmd>lua vim.lsp.buf.type_definition()<cr>')
    bufmap('n', 'grd', '<cmd>lua vim.lsp.buf.declaration()<cr>')
    bufmap({'n', 'x'}, 'gq', '<cmd>lua vim.lsp.buf.format({async = true})<cr>')
  end,
})




vim.cmd("set ignorecase")

