return {
	{
		"allaman/emoji.nvim",
		version = "*",
		opts = {},
		config = function(_, opts)
			require("emoji").setup(opts)
		end,
	},
}
