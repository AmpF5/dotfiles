return {
	"folke/noice.nvim",
	opts = {
		lsp = {
			signature = { enabled = false },
		},
		views = {
			hover = {
				border = {
					style = "rounded",
					padding = { 0, 1 },
				},
				win_options = {
					winhighlight = "Normal:HoverNormal,FloatBorder:HoverFloatBorder,NormalFloat:HoverNormal",
				},
			},
		},
	},
}