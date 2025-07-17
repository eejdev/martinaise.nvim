-- martinaise/treesitter.lua

local function set_hl(group, opts)
	vim.api.nvim_set_hl(0, group, opts)
end

local M = {}

M.setup = function(p)
	-- █ Core Structure █ --

	set_hl("@keyword", { fg = p.operator, italic = true }) -- for, def, return, import
	set_hl("@keyword.function", { fg = p.operator, bold = true }) -- def keyword
	set_hl("@keyword.return", { fg = p.operator }) -- return
	set_hl("@conditional", { fg = p.boolean, italic = true }) -- if, elif, else
	set_hl("@repeat", { fg = p.boolean, italic = true }) -- for, while
	set_hl("@operator", { fg = p.operator }) -- +, -, and, or
	set_hl("@punctuation.delimiter", { fg = p.operator }) -- :, ., etc.
	set_hl("@punctuation.bracket", { fg = p.operator }) -- (), [], {}
	set_hl("@punctuation.special", { fg = p.operator }) -- -> :=

	-- █ Declarations & Types █ --

	set_hl("@function", { fg = p.func, bold = true }) -- function names
	set_hl("@function.builtin", { fg = p.boolean }) -- print, len
	set_hl("@function.call", { fg = p.func }) -- method()
	set_hl("@method", { fg = p.func }) -- obj.method
	set_hl("@method.call", { fg = p.func }) -- obj.method()
	set_hl("@constructor", { fg = p.type }) -- class __init__

	set_hl("@class", { fg = p.type, bold = true }) -- class Foo:
	set_hl("@type", { fg = p.type }) -- int, str, Optional
	set_hl("@type.builtin", { fg = p.type }) -- bool, float, dict

	-- █ Literals & Constants █ --

	set_hl("@variable", { fg = p.variable }) -- general variable
	set_hl("@variable.builtin", { fg = p.boolean, italic = true }) -- self, cls
	set_hl("@constant", { fg = p.boolean }) -- True, False, ALL_CAPS
	set_hl("@constant.builtin", { fg = p.boolean }) -- True, False
	set_hl("@number", { fg = p.number }) -- 42
	set_hl("@float", { fg = p.number }) -- 3.14
	set_hl("@boolean", { fg = p.boolean }) -- True, False
	set_hl("@string", { fg = p.string }) -- "hello"
	set_hl("@string.escape", { fg = p.operator }) -- \n \t

	-- █ Decorators & Meta █ --

	set_hl("@attribute", { fg = p.comment }) -- @decorator
	set_hl("@namespace", { fg = p.edge }) -- module
	set_hl("@include", { fg = p.operator }) -- import

	-- █ Annotations & Parameters █ --

	set_hl("@parameter", { fg = p.variable, italic = true }) -- def foo(x)
	set_hl("@field", { fg = p.variable }) -- self.x
	set_hl("@property", { fg = p.func }) -- @property
	set_hl("@type.qualifier", { fg = p.type }) -- Optional[], List[]

	-- █ Comments & Docs █ --

	set_hl("@comment", { fg = p.comment, italic = true }) -- # comment
	set_hl("@docstring", { fg = p.comment, italic = true }) -- """doc"""

	-- █ Errors & Misc █ --

	set_hl("@error", { fg = p.type, undercurl = true }) -- Syntax error
	set_hl("@none", { fg = p.fg }) -- fallback

	-- Optional
	set_hl("@label", { fg = p.variable }) -- match/case labels
	set_hl("@symbol", { fg = p.edge }) -- unclassified symbols
end

return M
