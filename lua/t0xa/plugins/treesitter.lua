return {
  "nvim-treesitter/nvim-treesitter",
  -- open this plugin on two events:
  -- BufReadPre - open existing file
  -- BufNewFile - open new file
  event = { "BufReadPre", "BufNewFile" },
  build = ":TSUpdate",      -- Run whenever this plugin is installed or updated
  dependencies = {
    "windwp/nvim-ts-autotag", -- Auto-closing functionality within treesitter
  },
  config = function()
    -- import nvim-treesitter plugin
    local treesitter = require("nvim-treesitter.configs")

    -- Configure treesitter
    --   treesitter.setup({
    --     -- enable syntax highlighting
    --     highligh = {
    --       enable = true,
    --     },
    --
    --     -- enable better indentation
    --     indent = {
    --       enable = true,
    --     },
    --
    --     -- enable auto-tagging
    --     autotag = {
    --       enable = true,
    --     },
    --
    --     -- ensure these languages parsers are installed
    --     ensure_installed = {
    --       "python",
    --       "go",
    --       "lua",
    --       "bash",
    --       "json",
    --       "javascript",
    --       "jq",
    --       "markdown",
    --       "markdown_inline",
    --       "regex",
    --       "vim",
    --       "dockerfile",
    --     },
    --   })
    -- end,
    treesitter.setup({
      ensure_installed = {
        "python",
        "lua",
        "vim",
        "vimdoc",
        "query",
        "elixir",
        "heex",
        "javascript",
        "html",
      },
      sync_install = false,
      highlight = { enable = true },
      indent = { enable = true },
    })
  end,
}
