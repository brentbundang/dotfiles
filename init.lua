-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- optionally enable 24-bit colour
vim.opt.termguicolors = true
vim.api.nvim_set_option("clipboard","unnamed")


-- OR setup with some options
require("nvim-tree").setup({
  sort = {
    sorter = "case_sensitive",
  },
  view = {
    width = 30,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})

require("core.mappings")
require("core.plugins")
require("packer")
require("mason").setup()
require("lualine").setup()

vim.cmd 'colorscheme kanagawa'
require('dap-python').setup('~/.virtualenvs/debugpy/bin/python')
require("dapui").setup()
