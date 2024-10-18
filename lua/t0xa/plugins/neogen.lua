return {
  "danymat/neogen",
  version = "*", -- Follow only stable versions
  enabled = true,
  config = function()
    local neogen = require("neogen")
    neogen.setup({
      enabled = true
    })
    local keymap = vim.keymap
    local opts = { noremap = true, silent = true }
    keymap.set("n", "<Leader>ids", ":lua require('neogen').generate()<CR>", opts)
  end,
  -- config = true,
}
