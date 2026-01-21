return {
	"y3owk1n/undo-glow.nvim",
	event = "VeryLazy",
	version = "*",
	opts = {
		animation = {
			enabled = true,
			duration = 300,
			animation_type = "zoom",
			window_scoped = true,
		},
		highlights = {
			undo = {
				hl_color = { bg = "#693232" },
			},
			redo = {
				hl_color = { bg = "#2F4640" },
			},
			yank = {
				hl_color = { bg = "#7A683A" },
			},
			paste = {
				hl_color = { bg = "#325B5B" },
			},
		},
		priority = 2048 * 3,
	},
	keys = {
		{
			"u",
			function()
				require("undo-glow").undo()
			end,
			mode = "n",
			desc = "Undo with highlight",
		},
		{
			"<C-r>",
			function()
				require("undo-glow").redo()
			end,
			mode = "n",
			desc = "Redo with highlight",
		},
		{
			"p",
			function()
				require("undo-glow").paste_below()
			end,
			mode = "n",
			desc = "Paste below with highlight",
		},
		{
			"P",
			function()
				require("undo-glow").paste_above()
			end,
			mode = "n",
			desc = "Paste above with highlight",
		},
	},
}
