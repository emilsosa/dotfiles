return {
	"nvim-neo-tree/neo-tree.nvim",
	cmd = "Neotree",
	branch = "v3.x",
	keys = {
		{ "<leader>fe", false },
		{ "<leader>fE", false },
		{
			"<leader>e",
			function()
				require("neo-tree.command").execute({ toggle = true, dir = vim.uv.cwd() })
			end,
			desc = "Explorer NeoTree (cwd)",
		},
		{
			"<leader>E",
			function()
				require("neo-tree.command").execute({ toggle = true, dir = LazyVim.root() })
			end,
			desc = "Explorer NeoTree (Root Dir)",
		},
	},
}
