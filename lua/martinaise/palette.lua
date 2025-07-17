-- martinaise/palette.lua

local palette = {
	-- Core background & UI
	-- bg = "#000015", -- Russian Black (holotape deck)
	fg = "#E6E1DB", -- Text color (soft warm white)
	edge = "#AAA9A5", -- Holotape edge (used for borders, accents?)

	-- Syntax groups
	func = "#757932", -- Function names
	type = "#B74C27", -- Class names / types
	variable = "#C5A02D", -- Parameters, local variables
	string = "#4FA8B9", -- Strings (f-strings, raw, etc.)
	number = "#4FA8B9", -- Numbers (same as strings for consistency)
	boolean = "#98C2D6", -- Booleans / None (Logic)
	comment = "#6548B3", -- Comments (Inner monologue / Inland Empire)
	operator = "#AE3D5B", -- Punctuation, brackets, symbols
	visual = "#E3E0DB",
	cursorline = "#12072A", -- ~10% lighter

	-- Optional UI accents
	hint = "#4FA8B9",
	info = "#98C2D6",
	warning = "#C5A02D",
	error = "#B74C27",

	-- Lualine mode backgrounds
	normal_mode = "#C5A02D", -- golden ochre (Motorics)
	insert_mode = "#B74C27", -- burnt sienna (Physical)
	visual_mode = "#4FA8B9", -- pale cyan (Intelligence)
	replace_mode = "#AE3D5B", -- deep red (Gasoline)
	command_mode = "#757932", -- olive green

	-- Lualine text & separators
	lualine_bg = "#0A001C", -- holotape black
	lualine_fg = "#E6E1DB", -- readable pale text
	lualine_edge = "#AAA9A5", -- metallic for contrast

	-- other
	non_text = "#3C3844",
	special_key = "#3C3844",
	color_column = "#1A1228",

	diff_add = "#1A2B1A",
	diff_change = "#2A2A1A",
	diff_delete = "#2A1A1A",
	diff_text = "#373749",
}

return palette
