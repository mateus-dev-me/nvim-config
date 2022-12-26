vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
  use 'wbthomason/packer.nvim'
  use 'terroo/vim-simple-emoji'
  use 'navarasu/onedark.nvim'
  use 'L3MON4D3/LuaSnip'
  use 'ap/vim-css-color'
  use 'dracula/vim'
  use {'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons'}
  use 'vim-airline/vim-airline'
  use 'vim-airline/vim-airline-themes'
  use 'xiyaowong/nvim-transparent'
  use 'nvim-lua/plenary.nvim'
  use 'nvim-telescope/telescope.nvim'
  use 'ryanoasis/vim-devicons'
  use 'voldikss/vim-floaterm'
  use('neoclide/coc.nvim', {branch = 'realese'})
  use 'ervandew/supertab'
  use 'matze/vim-move'
  use 'gko/vim-coloresque'
  use('Lokaltog/powerline', {rtp = 'powerline/bindings/vim/'})
  use 'glepnir/dashboard-nvim'
  use {
  'nvim-tree/nvim-tree.lua',
    requires = {
        'nvim-tree/nvim-web-devicons', -- optional, for file icons
    },
    tag = 'nightly' -- optional, updated every week. (see issue #1193)
  }
end)
