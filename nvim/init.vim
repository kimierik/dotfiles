"Plug 'neovim/nvim-lspconfig'
"
"
"
"
call plug#begin()



"color schemes taht is can hotswap
Plug 'gruvbox-community/gruvbox'
Plug 'ghifarit53/daycula-vim' , {'branch' : 'main'}
Plug 'Rigellute/shades-of-purple.vim'
Plug 'folke/tokyonight.nvim'
Plug 'sainnhe/sonokai'
Plug 'rose-pine/neovim'
Plug 'NLKNguyen/papercolor-theme'
Plug 'thedenisnikulin/vim-cyberpunk'


"Fuzzy finder
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.4' }
" or                                , { 'branch': '0.1.x' }

" syntax
"Plug 'sheerun/vim-polyglot'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}


"helpers
"Plug 'mattn/emmet-vim'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'Xuyuanp/nerdtree-git-plugin'



Plug 'nvim-orgmode/orgmode'

"drip
Plug 'neovide/neovide'

"Plug 'nvim-lua/completion-nvim'
"Plug 'neovim/nvim-lspconfig'

"language servers
Plug 'neoclide/coc.nvim',{'branch':'release'}
let g:coc_global_extensions = ['coc-tslint-plugin', 'coc-tsserver', 'coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-yank', 'coc-prettier']


call plug#end()


set termguicolors



let g:sonokai_style = 'andromeda'
colorscheme sonokai

:lua require('treesitmodule')
:lua require('orgmodeini')
:lua require('myshit')


set nowrap
set number
set relativenumber
set showmatch
set guicursor=n-v-c:block-Cursor
set scrolloff=20


set tabstop=4
set shiftwidth=4
set expandtab






let g:neovide_scale_factor = 1.0
set guifont=FiraCode\ Nerd\ Font:h13
let g:neovide_cursor_antialiasing=v:true
let g:neovide_refresh_rate=60
let g:neovide_cursor_vfx_mode = ""

let g:neovide_cursor_animation_length=0.13
let g:neovide_cursor_trail_size = 0.2






"imposter file in lua directory
" handles random coc setup
source ~/.config/nvim/lua/cocsetup/init.vim






"telescope remaps
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

inoremap <leader>cd <Esc>:set autochdir<cr>
nnoremap <leader>cd <Esc>:set autochdir<cr>





"fast move between next and prev buffers
inoremap <c-j> <Esc>:bprevious<cr>
nnoremap <c-j> <Esc>:bprevious<cr>

inoremap <c-k> <Esc>:bnext<cr>
nnoremap <c-k> <Esc>:bnext<cr>




map <f7> :tab term <cr>

" t remap  esc escapes terminal
tnoremap <Esc> <C-\><C-n>


command CopyYankToCp redir @+ | echo @" |redir END


"kept accidentally hitrting f1 when trying to press esc
:nmap <F1> <nop>
:imap <F1> <nop>

