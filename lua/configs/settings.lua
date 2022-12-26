local g = vim.g
local opt = vim.opt
local cmd = vim.cmd

-- mapleader key
g.mapleader = ','

-- Original Command in vimscript
cmd[[ 
  autocmd FileType css setl iskeyword+=-
  autocmd FileType scss setl iskeyword+=@-@

  autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions -=o
]]

-- SuperTab setup
g.SuperTabDefaultCompletionType = '<C-n>'

-- General Setup
opt.compatible = false
opt.mouse = 'a'
opt.swapfile = false
opt.hidden = true
opt.history = 5000
opt.lazyredraw = true
opt.synmaxcol = 240

cmd[[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]]

-- Theme
opt.termguicolors = true
cmd [[ colorscheme dracula ]]
g.transparent_enabled = true

-- Editor
opt.number = true
opt.wrap = false
opt.signcolumn = 'yes'
opt.showmatch = true
opt.showmode = false
opt.foldmethod = 'marker'
opt.splitright = true
opt.splitbelow = true
opt.conceallevel = 0
--opt.colorcolumn = '80'
opt.cursorline = true
opt.scrolloff = 10
opt.expandtab = true
opt.shiftwidth = 4 
opt.tabstop = 4 
opt.smartindent = true
opt.list = true
opt.shortmess:append { c = true }
opt.whichwrap:append {
	['<'] = true,
	['>'] = true,
	[','] = true,
	h = true,
	l = true
}

opt.incsearch = true
opt.wildmenu = true
opt.confirm = true

opt.autoindent = true
opt.smartindent = true

vim.opt.termguicolors = true
require("bufferline").setup{}

-- Terminal
cmd [[command! Term :botright split term://$SHELL]]
cmd [[
  autocmd TermOpen * setlocal listchars= nonumber norelativenumber nocursorline
  autocmd TermOpen * startinsert
  autocmd BufLeave term://* stopinsert
]]

-- Floaterminal setup
cmd [[
  let g:floaterm_keymap_new = '<Leader>ft'
  let g:floaterm_keymap_prev = '<Leader>fp'
  let g:floaterm_keymap_next = '<Leader>fn'
  let g:floaterm_keymap_toggle = '<Leader>t'
  let g:floaterm_keymap_kill = '<Leader>fk'
  let g:floaterm_title='>( /ᐠ｡ꞈ｡ᐟ\ )<'
]]


-- Nvimtree configuration
require('nvim-tree').setup({
  sort_by = "case_sensitive",
  view = {
    adaptive_size = true,
    mappings = {
      list = {
        { key = "u", action = "dir_up" },
      },
    },
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})
