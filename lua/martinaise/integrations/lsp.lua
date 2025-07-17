-- lua/martinaise/integrations/lsp.lua

local function set_hl(group, opts)
	vim.api.nvim_set_hl(0, group, opts)
end

local M = {}

M.setup = function(p)
	-- █ Diagnostics █ --

	-- Severity colors
	set_hl("DiagnosticError", { fg = p.error })
	set_hl("DiagnosticWarn", { fg = p.warning })
	set_hl("DiagnosticInfo", { fg = p.info })
	set_hl("DiagnosticHint", { fg = p.hint })

	-- Underlines
	set_hl("DiagnosticUnderlineError", { undercurl = true, sp = p.error })
	set_hl("DiagnosticUnderlineWarn", { undercurl = true, sp = p.warning })
	set_hl("DiagnosticUnderlineInfo", { undercurl = true, sp = p.info })
	set_hl("DiagnosticUnderlineHint", { undercurl = true, sp = p.hint })

	-- Gutter signs
	set_hl("DiagnosticSignError", { fg = p.error })
	set_hl("DiagnosticSignWarn", { fg = p.warning })
	set_hl("DiagnosticSignInfo", { fg = p.info })
	set_hl("DiagnosticSignHint", { fg = p.hint })

	-- Virtual text
	set_hl("DiagnosticVirtualTextError", { fg = p.error, italic = true })
	set_hl("DiagnosticVirtualTextWarn", { fg = p.warning, italic = true })
	set_hl("DiagnosticVirtualTextInfo", { fg = p.info, italic = true })
	set_hl("DiagnosticVirtualTextHint", { fg = p.hint, italic = true })

	-- █ LSP Features █ --

	-- References (e.g. <Shift+K> or LSP "find reference")
	set_hl("LspReferenceText", { bold = true })
	set_hl("LspReferenceRead", { bold = true })
	set_hl("LspReferenceWrite", { bold = true })

	-- Inlay hints (ghostly param/type hints in the code)
	set_hl("LspInlayHint", { fg = p.variable, bg = p.lualine_bg, italic = true })

	-- Active parameter in function signature help
	set_hl("LspSignatureActiveParameter", { fg = p.comment, underline = true })

	-- Optional (if not already set properly):
	set_hl("NormalFloat", { fg = p.fg, bg = p.lualine_bg })
	set_hl("FloatBorder", { fg = p.edge, bg = p.lualine_bg })
end

return M
