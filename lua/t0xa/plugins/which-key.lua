return {
  "folke/which-key.nvim",
  -- Telling nvim that it can load this plugin later, and that it is not 
  -- that important for initial UI
  event = "VeryLazy",
  -- Function that will run while neovim startup instead of when plugin is actualy loads
  init = function()
    -- How long which-key will wait until activation
    vim.o.timeout = true
    vim.o.timeoutlen = 500
  end,
  -- Options that will pass to setup function, but we are leaving it empty to use
  -- default configuration
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
  }
}
