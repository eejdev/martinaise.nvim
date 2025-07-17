-- martinaise/highlights.lua

local function set_hl(group, opts)
	vim.api.nvim_set_hl(0, group, opts)
end

local M = {}

M.setup = function(p)
	-- █ UI Core █ --

	set_hl("Normal", { fg = p.fg, bg = p.bg })
	set_hl("NormalNC", { fg = p.fg, bg = p.bg })
	set_hl("NormalFloat", { fg = p.fg, bg = p.bg })
	set_hl("FloatBorder", { fg = p.edge, bg = p.bg })

	--set_hl("CursorLine", { bg = p.cursorline })
	set_hl("CursorLineNr", { fg = p.variable, bold = true })
	set_hl("LineNr", { fg = p.edge })
	set_hl("SignColumn", { fg = p.edge, bg = p.bg })
	set_hl("ColorColumn", { bg = p.color_column })

	set_hl("EndOfBuffer", { fg = p.edge })
	set_hl("MatchParen", { fg = p.operator, bold = true })

	-- █ Visual Feedback █ --

	set_hl("Visual", { bg = p.visual })
	set_hl("Search", {
		fg = p.lualine_bg, -- background color
		bg = p.visual, -- pale white (p.visual = "#E3E0DB")
		bold = true,
	})

	set_hl("IncSearch", {
		fg = p.lualine_bg,
		bg = p.warning, -- strong golden yellow
		bold = true,
	})

	-- █ Syntax Base (non-Treesitter fallback) █ --

	set_hl("Comment", { fg = p.comment, italic = true })
	set_hl("Constant", { fg = p.number })
	set_hl("String", { fg = p.string })
	set_hl("Function", { fg = p.func })
	set_hl("Identifier", { fg = p.variable })
	set_hl("Statement", { fg = p.operator })
	set_hl("Keyword", { fg = p.operator, italic = true })
	set_hl("PreProc", { fg = p.edge })
	set_hl("Type", { fg = p.type })
	set_hl("Special", { fg = p.operator })
	set_hl("Todo", { fg = p.variable, bold = true })

	-- █ Diagnostics (LSP/VirtualText) █ --

	set_hl("DiagnosticError", { fg = p.type })
	set_hl("DiagnosticWarn", { fg = p.variable })
	set_hl("DiagnosticInfo", { fg = p.boolean })
	set_hl("DiagnosticHint", { fg = p.string })

	set_hl("DiagnosticUnderlineError", { undercurl = true, sp = p.type })
	set_hl("DiagnosticUnderlineWarn", { undercurl = true, sp = p.variable })
	set_hl("DiagnosticUnderlineInfo", { undercurl = true, sp = p.boolean })
	set_hl("DiagnosticUnderlineHint", { undercurl = true, sp = p.string })

	set_hl("DiagnosticSignError", { fg = p.edge, bg = p.bg })
	set_hl("DiagnosticSignWarn", { fg = p.edge, bg = p.bg })
	set_hl("DiagnosticSignInfo", { fg = p.edge, bg = p.bg })
	set_hl("DiagnosticSignHint", { fg = p.edge, bg = p.bg })

	-- █ LSP & Hints █ --

	set_hl("LspReferenceText", { bg = p.edge })
	set_hl("LspReferenceRead", { bg = p.edge })
	set_hl("LspReferenceWrite", { bg = p.edge, bold = true })
	set_hl("LspInlayHint", { fg = p.variable, bg = p.bg, italic = true })
	set_hl("LspSignatureActiveParameter", { fg = p.comment, underline = true })

	-- █ UI Menus █ --

	set_hl("Pmenu", { fg = p.fg, bg = p.bg })
	set_hl("PmenuSel", { fg = p.bg, bg = p.variable })
	set_hl("PmenuThumb", { bg = p.variable })
	set_hl("PmenuSbar", { bg = p.edge })

	set_hl("StatusLine", { fg = p.fg, bg = p.edge })
	set_hl("StatusLineNC", { fg = p.edge, bg = p.edge })
	set_hl("VertSplit", { fg = p.edge })
	set_hl("WinSeparator", { fg = p.edge })
	set_hl("Title", { fg = p.string, bold = true })

	-- █ Misc █ --

	set_hl("NonText", { fg = p.non_text })
	set_hl("SpecialKey", { fg = p.special_key })

	set_hl("GitSignsAdd", { fg = p.func }) -- no bg
	set_hl("GitSignsChange", { fg = p.variable })
	set_hl("GitSignsDelete", { fg = p.operator })

	-- Diff highlighting (for plugins like diffview.nvim, fugitive)
	set_hl("DiffAdd", { fg = p.func, bg = p.diff_add })
	set_hl("DiffChange", { fg = p.variable, bg = p.diff_change })
	set_hl("DiffDelete", { fg = p.operator, bg = p.diff_delete })
	set_hl("DiffText", { fg = p.fg, bg = p.diff_text, bold = true })

	-- Folded text
	set_hl("Folded", { fg = p.comment, bg = p.cursorline, italic = true })
	set_hl("FoldColumn", { fg = p.edge, bg = p.lualine_bg })

	-- Cursor styles (optional, for terminal/editor cursor styling)
	set_hl("Cursor", { fg = p.lualine_bg, bg = p.fg })
	set_hl("iCursor", { fg = p.lualine_bg, bg = p.insert_mode })

	-- Telescope (floating fuzzy finder)
	-- Borders
	set_hl("TelescopeBorder", { fg = p.edge, bg = p.lualine_bg })
	set_hl("TelescopePromptBorder", { fg = p.edge, bg = p.lualine_bg })
	set_hl("TelescopeResultsBorder", { fg = p.edge, bg = p.lualine_bg })
	set_hl("TelescopePreviewBorder", { fg = p.edge, bg = p.lualine_bg })

	-- Base background + readable foreground
	set_hl("TelescopeNormal", { fg = p.fg, bg = p.lualine_bg })

	-- Prompt, Results, Preview
	set_hl("TelescopePromptNormal", { fg = p.fg, bg = p.cursorline }) -- slightly lighter
	set_hl("TelescopeResultsNormal", { fg = p.fg, bg = p.lualine_bg })
	set_hl("TelescopePreviewNormal", { fg = p.fg, bg = p.lualine_bg })

	-- Titles
	set_hl("TelescopePromptTitle", { fg = p.lualine_bg, bg = p.variable, bold = true })
	set_hl("TelescopeResultsTitle", { fg = p.lualine_bg, bg = p.type, bold = true })
	set_hl("TelescopePreviewTitle", { fg = p.lualine_bg, bg = p.string, bold = true })

	-- Selection line
	set_hl("TelescopeSelection", {
		fg = p.fg, -- readable text
		bg = p.visual, -- pale, high-contrast selection
		bold = true,
	})

	-- Selection caret (the ➤ indicator)
	set_hl("TelescopeSelectionCaret", { fg = p.operator })

	-- Match highlights in results
	set_hl("TelescopeMatching", {
		fg = p.warning, -- golden yellow
		bold = true,
	})

	-- Prompt indicator (e.g. ">")
	set_hl("TelescopePromptPrefix", { fg = p.operator })
end

return M
