return {
  "nvim-tree/nvim-tree.lua",
  dependencies = "nvim-tree/nvim-web-devicons",
  config = function()
    local nvimtree = require("nvim-tree")
    -- recommended settings from nvim-tree documentation
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1

    nvimtree.setup({
      view = {
        width = 35,
        relativenumber = true,
      },
      -- disable window_picker for explorer to work well with window splits
      actions = {
        open_file = {
          window_picker = {
            enable = true,
          },
        },
      },
      -- Custom list of vim regex for names that will not be shown
      filters = {
        custom = { ".DS_Store" },
      },
      -- Show files ignored by git
      git = {
        ignore = false,
      },
    })

    -- set nvim-tree keypmaps
    local keymap = vim.keymap
    keymap.set('n', '<leader>nt', ':NvimTreeToggle<CR>', {desc = "Toggle file explorer"})
    keymap.set('n', '<leader>nf', ':NvimTreeFindFileToggle<CR>', {desc = "Toggle file explorer on current file"})

  end
}
