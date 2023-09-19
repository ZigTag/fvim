-- Miscelaneous fun stuff
return {
	-- Comment with haste
	{
		"numToStr/Comment.nvim",
		opts = {},
	},
	-- Move stuff with <M-j> and <M-k> in both normal and visual mode
	{
		"echasnovski/mini.move",
		config = function()
			require("mini.move").setup()
		end,
	},
	-- Better buffer closing actions. Available via the buffers helper.
	{
		"kazhala/close-buffers.nvim",
		opts = {
			preserve_window_layout = { "this", "nameless" },
		},
	},
	"tpope/vim-sleuth", -- Detect tabstop and shiftwidth automatically
	"tpope/vim-surround", -- Surround stuff with the ys-, cs-, ds- commands
	-- NVIM Autopairs
	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		opts = {} -- this is equalent to setup({}) function
	},
	-- Leap Movement
	{
		"ggandor/leap.nvim",
		dependencies = {
			"tpope/vim-repeat"
		},
		config = function()
			require('leap').add_default_mappings()
		end
	},
	{
		"stevearc/dressing.nvim",
		opts = {},
	}
}
