-- martinaise.nvim lualine theme
-- martinaise/lualine.lua

return function(p)
	return {
		normal = {
			a = { fg = p.lualine_bg, bg = p.normal_mode, gui = "bold" },
			b = { fg = p.fg, bg = p.cursorline, gui = "bold" }, -- darker bg for Git/filename
			c = { fg = p.fg, bg = p.lualine_bg }, -- stats (%/line), keep crisp
		},
		insert = {
			a = { fg = p.lualine_bg, bg = p.insert_mode, gui = "bold" },
			b = { fg = p.lualine_fg, bg = p.edge },
			c = { fg = p.lualine_fg, bg = p.lualine_bg },
		},
		visual = {
			a = { fg = p.lualine_bg, bg = p.visual_mode, gui = "bold" },
			b = { fg = p.lualine_fg, bg = p.edge },
			c = { fg = p.lualine_fg, bg = p.lualine_bg },
		},
		replace = {
			a = { fg = p.lualine_bg, bg = p.replace_mode, gui = "bold" },
			b = { fg = p.lualine_fg, bg = p.edge },
			c = { fg = p.lualine_fg, bg = p.lualine_bg },
		},
		command = {
			a = { fg = p.lualine_bg, bg = p.command_mode, gui = "bold" },
			b = { fg = p.lualine_fg, bg = p.edge },
			c = { fg = p.lualine_fg, bg = p.lualine_bg },
		},
		inactive = {
			a = { fg = p.lualine_edge, bg = p.lualine_bg, gui = "italic" },
			b = { fg = p.lualine_edge, bg = p.lualine_bg },
			c = { fg = p.lualine_edge, bg = p.lualine_bg },
		},
	}
end
