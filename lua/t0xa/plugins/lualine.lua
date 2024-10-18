return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local lualine = require("lualine")
    -- configure lualine with modified theme
    lualine.setup({
      options = {
        theme = "gruvbox-material",
      },
      sections = {
        lualine_c = {
          {
            "filename",
            file_status = true,
            path = 2,
          },
        },
      },
    })
  end,
}
