return {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim", -- util for better language servers manipulation
		"WhoIsSethDaniel/mason-tool-installer.nvim",
	},
	config = function()
		-- import mason
		local mason = require("mason")

		-- import mason-lspconfig
		local mason_lspconfig = require("mason-lspconfig")

		local mason_tool_installer = require("mason-tool-installer")

		-- enable mason and configure icons
		mason.setup({
			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
		})

		mason_lspconfig.setup({
			-- list of servers for mason to install
			ensure_installed = {
				"lua_ls",
				"pyright",
				"gopls",
			},
		})

		mason_tool_installer.setup({
			ensure_installed = {
				"prettier", -- prettier formatter
				"stylua", -- lua formatter
				"isort", -- python formatter
				"black", -- python formatter
				"pylint",
        "flake8",
				-- Astra settings for 3.7 Python
				-- { "isort", version = "5.11.5" }, -- python formatter
				-- { "black", version = "23.3.0" }, -- python formatter
				-- { "pylint", version = "2.9.0" },
				-- { "pylint", version = "2.9.0" },
				-- { "flake8", version = "4.0.1" },
				"eslint_d",
			},
		})
	end,
}
