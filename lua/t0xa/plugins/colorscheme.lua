return {
  "folke/tokyonight.nvim",
  dependencies = {
    "ellisonleao/gruvbox.nvim",
    "sainnhe/everforest",
    "sainnhe/gruvbox-material",
    "rebelot/kanagawa.nvim",
  },
  lazy = false,
  priority = 1000,
  config = function()
    vim.g.gruvbox_material_enable_italic = true
    vim.cmd.colorscheme("gruvbox-material")
  end,
}

