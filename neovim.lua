return {
	{
		"bjarneo/aether.nvim",
		name = "aether",
		priority = 1000,
		opts = {
			disable_italics = false,
			colors = {
				-- Desert Gleam base colors
				base00 = "#faf7f3", -- Default background
				base01 = "#f7f2ed", -- Lighter background (status bars)
				base02 = "#f0e9e3", -- Selection background
				base03 = "#6b6775", -- Comments, invisibles
				base04 = "#4a4653", -- Dark foreground
				base05 = "#3a3644", -- Default foreground
				base06 = "#3a3644", -- Light foreground
				base07 = "#1a1922", -- Light background

				-- Accent colors
				base08 = "#b36667", -- Variables, errors, red
				base09 = "#c78283", -- Integers, constants, orange
				base0A = "#c68d53", -- Classes, types, yellow
				base0B = "#7a9977", -- Strings, green
				base0C = "#5f8d7c", -- Support, regex, cyan
				base0D = "#7a6d9e", -- Functions, keywords, blue
				base0E = "#d4886a", -- Keywords, storage, magenta
				base0F = "#d4a574", -- Deprecated, brown/yellow
			},
		},
		config = function(_, opts)
			require("aether").setup(opts)
			vim.cmd.colorscheme("aether")
			require("aether.hotreload").setup()
		end,
	},
	{
		"LazyVim/LazyVim",
		opts = {
			colorscheme = "aether",
		},
	},
}
