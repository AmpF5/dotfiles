return {
	"saghen/blink.cmp",
	opts = {
		completion = {
			menu = {
				max_height = 20,
				min_width = 40,
				scrollbar = true,
				auto_show = true,
				draw = {
					columns = {
						{ "kind_icon" },
						{ "label", "label_description", gap = 1 },
						{ "kind" },
						{ "source_name" },
					},
				},
			},

			documentation = {
				auto_show = true,
				auto_show_delay_ms = 200,
				window = {
					max_height = 20,
					max_width = 80,
				},
			},
		},

		-- appearance = {
		-- 	use_nvim_cmp_as_default = false,
		-- 	nerd_font_variant = "mono",
		-- },
	},
}
