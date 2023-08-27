return {
	"Dax89/automaton.nvim",
	dependencies = {
       "nvim-lua/plenary.nvim",
       "nvim-telescope/telescope.nvim",
       "mfussenegger/nvim-dap", -- Debug support for 'launch' configurations (Optional)
       "hrsh7th/nvim-cmp",      -- Autocompletion for automaton workspace files (Optional)
       "L3MON4D3/LuaSnip",      -- Snippet support for automaton workspace files (Optional)
	},
	config = function() 
		require("automaton").setup()

		local map = require("helpers.keys").map
		map("n", "<F5>", "<CMD>Automaton launch default<CR>")
		map("n", "<F6>", "<CMD>Automaton debug default<CR>")
		map("n", "<F8>", "<CMD>Automaton tasks default<CR>")

		map("n", "<leader>aC", "<CMD>Automaton create<CR>")
		map("n", "<leader>aI", "<CMD>Automaton init<CR>")
		map("n", "<leader>aL", "<CMD>Automaton load<CR>")

		map("n", "<leader>ac", "<CMD>Automaton config<CR>")
		map("n", "<leader>ar", "<CMD>Automaton recents<CR>")
		map("n", "<leader>aw", "<CMD>Automaton workspaces<CR>")
		map("n", "<leader>aj", "<CMD>Automaton jobs<CR>")
		map("n", "<leader>al", "<CMD>Automaton launch<CR>")
		map("n", "<leader>ad", "<CMD>Automaton debug<CR>")
		map("n", "<leader>at", "<CMD>Automaton tasks<CR>")

		map("n", "<leader>aol", "<CMD>Automaton open launch<CR>")
		map("n", "<leader>aov", "<CMD>Automaton open variables<CR>")
		map("n", "<leader>aot", "<CMD>Automaton open tasks<CR>")
		map("n", "<leader>aoc", "<CMD>Automaton open config<CR>")

		-- Visual Mode
		map("v", "<F5>", "<CMD><C-U>Automaton launch default<CR>")
		map("v", "<F6>", "<CMD><C-U>Automaton debug default<CR>")
		map("v", "<F8>", "<CMD><C-U>Automaton tasks default<CR>")
		map("v", "<leader>al", "<CMD><C-U>Automaton launch<CR>")
		map("v", "<leader>ad", "<CMD><C-U>Automaton debug<CR>")
		map("v", "<leader>at", "<CMD><C-U>Automaton tasks<CR>")
	end,
}
