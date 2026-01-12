function Status:name()
	local h = self._tab.current.hovered
	if not h then return ui.Line({}) end

	local linked = ""
	if h.link_to ~= nil then linked = " -> " .. tostring(h.link_to) end
	return ui.Line(" " .. h.name .. linked)
end

require("relative-motions"):setup({
	show_numbers = "relative_absolute",
	only_motions = true,
})

require("git"):setup()

require("yatline"):setup({
	theme = require("yatline-catppuccin"):setup("mocha"),

	header_line = {
		left = {
			section_a = { { type = "line", custom = false, name = "tabs", params = { "left" } } },
			section_b = {},
			section_c = {},
		},
		right = {
			section_a = {},
			section_b = { { type = "coloreds", custom = false, name = "count" } },
			section_c = { { type = "coloreds", custom = false, name = "githead" } },
		},
	},

	status_line = {
		left = {
			section_a = { { type = "string", custom = false, name = "tab_mode" } },
			section_b = {
				{ type = "string", custom = false, name = "hovered_file_extension", params = { true } },
				{ type = "string", custom = false, name = "hovered_name" },
			},
			section_c = {
				{ type = "string", custom = false, name = "hovered_size" },
				{ type = "coloreds", custom = false, name = "permissions" },
			},
		},
		right = {
			section_a = { { type = "string", custom = false, name = "cursor_position" } },
			section_b = { { type = "string", custom = false, name = "cursor_percentage" } },
			section_c = {},
		},
	},
})

require("yatline-githead"):setup({
	theme = require("yatline-catppuccin"):setup("mocha"),

	branch_prefix = "",
	branch_borders = "[]",
})
