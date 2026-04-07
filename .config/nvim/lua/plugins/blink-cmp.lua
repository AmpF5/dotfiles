return {
	"saghen/blink.cmp",
	opts = {
		signature = {
			enabled = true,
			window = { border = "rounded" },
		},
		completion = {
			list = {
				selection = {
					preselect = false,
					auto_insert = false,
				},
			},
			ghost_text = { enabled = true },
			menu = {
				border = "rounded",
				max_height = 20,
				min_width = 60,
				scrollbar = true,
				auto_show = true,
				draw = {
					treesitter = { "lsp" },
					columns = { { "kind_icon" }, { "label", gap = 1 } },
					components = {
						label = {
							width = { fill = true, max = 120 },
							text = function(ctx)
								return require("colorful-menu").blink_components_text(ctx)
							end,
							highlight = function(ctx)
								return require("colorful-menu").blink_components_highlight(ctx)
							end,
						},
					},
				},
			},

			documentation = {
				auto_show = true,
				auto_show_delay_ms = 200,
				window = {
					border = "rounded",
					max_height = 20,
					max_width = 80,
				},
			},
		},
	},
}
