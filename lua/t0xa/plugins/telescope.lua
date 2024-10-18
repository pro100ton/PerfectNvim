return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.6",
	dependencies = {
		"nvim-lua/plenary.nvim",
		-- Improving performance of finder
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
		-- Display dev icons
		"nvim-tree/nvim-web-devicons",
		"folke/todo-comments.nvim",
	},
	config = function()
		local telescope = require("telescope")
		local actions = require("telescope.actions")

		telescope.setup({
			defaults = {
				path_display = { "smart" },
				mappings = {
					i = {
						["<C-k>"] = actions.move_selection_previous, -- move to prev result
						["<C-j>"] = actions.move_selection_next, -- move to next result
					},
				},
			},
		})

		telescope.load_extension("fzf") -- load FZF extension to improve performance

		local builtin = require("telescope.builtin")
		local keymap = vim.keymap
		keymap.set("n", "<leader>ff", builtin.find_files, { desc = "FZF: find files in cwd" })
		keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "FZF: find string in cwd" })
		keymap.set("n", "<leader>fb", builtin.buffers, { desc = "FZF: display opened buffers" })
		keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "FZF: display help tags" })
		keymap.set("n", "<leader>ft", "<cmd>TodoTelescope<cr>", { desc = "FZF: display TODO comments" })
	end,
}
