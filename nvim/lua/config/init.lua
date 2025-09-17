require("packer")

vim.opt.rnu = true
vim.opt.nu = true

vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.tabstop = 4
vim.opt.expandtab = true

vim.opt.scrolloff=20
vim.opt.showmatch=true

vim.opt.wrap = false

vim.opt.termguicolors=true


vim.cmd.colorscheme("sonokai")
vim.api.nvim_create_user_command('Cop', 'redir @+ | echo @" | redir end', {})
