vim.opt.wildmode = longest, list
vim.opt.relativenumber = true
vim.opt.termguicolors = true
vim.opt.ignorecase = true
vim.opt.autoindent = true
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.showmatch = true
vim.opt.incsearch = true
vim.opt.expandtab = true
vim.opt.swapfile = false
vim.opt.wildmenu = true
vim.opt.number = true
vim.opt.clipboard = 'unnamedplus'
vim.opt.colorcolumn = "0"
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.scrolloff = 6
vim.opt.cmdheight = 1
vim.opt.syntax = on
vim.opt.mouse = 'a'

vim.g.mapleader = "\\"

require('packer').startup(function(use)
  use "wbthomason/packer.nvim"
  use "vim-airline/vim-airline"
  use "preservim/nerdcommenter"
  use "ptzz/lf.vim"
  use "preservim/tagbar"
  use { "junegunn/fzf", run = function() vim.fn['fzf#install'] (0) end}
  use "junegunn/fzf.vim"
  use "duane9/nvim-rg"
  use "nvim-telescope/telescope.nvim"
  use { 'rafcamlet/nvim-luapad', requires = "antoinemadec/FixCursorHold.nvim" }
  use { "nvim-treesitter/nvim-treesitter", run = function() vim.fn("TSUpdate") end}
  use "jlcrochet/vim-crystal"
  use "voldikss/vim-floaterm"
  use "jlcrochet/vim-ruby" 
  use "tbastos/vim-lua"
  use "elixir-editors/vim-elixir"
  use "jparise/vim-graphql"
  use "slim-template/vim-slim"
  use "joshdick/onedark.vim"
  use "jacoborus/tender.vim"
  use "nvim-lua/plenary.nvim"
  use "numToStr/FTerm.nvim"
  --use "~/api-nvim"
end)

--require('luapad').setup({eval_on_change = "true"})
-- Remapping
--require'FTerm'.setup({
    --border = 'double',
    --dimensions  = {
        --height = 0.9,
        --width = 0.9,
    --},
--})

-- Example keybindings
--vim.keymap.set('n', '<A-i>', '<CMD>lua require("FTerm").toggle()<CR>')
--vim.keymap.set('t', '<A-i>', '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>')
--
function map(mode, lhs, rhs, opts)
  local options = { noremap = true }
  if opts then
    options = vim.tbl_extend("force", options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

map("n", "<CR>", ":a<CR><CR>.<CR>")

map("n", "<C-h>", "<C-w>h")
map("n", "<C-j>", "<C-w>j")
map("n", "<C-k>", "<C-w>k")
map("n", "<C-l>", "<C-w>l")

map("n", "<leader>fz", ":FZF<CR>")
map("n", "<leader>lf", ":Lf<CR>")
map("n", "<leader>n", ":bn<CR>")
map("n", "<leader>p", ":bp<CR>")
map("n", "<leader>q", ":bd<CR>")
map("n", "<leader>tb", ":TagbarToggle<CR>")

map("n", "yf", ":let @+=expand('%:p')<CR>")
map("n", "yd", ":let @+=expand('%:p:h')<CR>")

map("n", "<leader>ff", "<cmd>Telescope find_files<CR>")
map("n", "<leader>fg", "<cmd>Telescope live_grep<CR>")
map("n", "<leader>fb", "<cmd>Telescope buffers<CR>")
map("n", "<leader>fh", "<cmd>Telescope help_tags<CR>")

map("n", "<leader>tr", ":Explore<CR>")

map("v", "<A-j>", ":m '>+1<CR>gv=gv")
map("v", "<A-k>", ":m '<-2<CR>gv=gv")

--require('api-nvim')
--vim.api.nvim_create_user_command('Result', "lua require('api-nvim').create()", {})

