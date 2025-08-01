return {
	"rmagatti/auto-session",
	config = function()
		require("auto-session").setup({
			log_level = "error",
			auto_session_suppress_dirs = { "~/", "~/Projects", "~/Downloads", "/" },
			pre_save_cmds = { "tabdo Neotree close" },
			post_restore_cmds = {},
		})
	end,
}
