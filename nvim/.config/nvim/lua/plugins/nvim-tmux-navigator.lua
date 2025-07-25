return {
	"alexghergh/nvim-tmux-navigation",
	keys = {
		{
			"<C-h>",
			function()
				require("nvim-tmux-navigation").NvimTmuxNavigateLeft()
			end,
			desc = "Focus ← window",
		},
		{
			"<C-j>",
			function()
				require("nvim-tmux-navigation").NvimTmuxNavigateDown()
			end,
			desc = "Focus ↓ window",
		},
		{
			"<C-l>",
			function()
				require("nvim-tmux-navigation").NvimTmuxNavigateRight()
			end,
			desc = "Focus → window",
		},
		{
			"<C-k>",
			function()
				require("nvim-tmux-navigation").NvimTmuxNavigateUp()
			end,
			desc = "Focus ↑ window",
		},
	},
	setup = {},
}
