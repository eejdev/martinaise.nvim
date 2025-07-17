-- lua/martinaise/init.lua
local M = {}

M.load = function()
	local palette = require("martinaise.palette")
	require("martinaise.highlights").setup(palette)
	require("martinaise.integrations.treesitter").setup(palette)
	require("martinaise.integrations.lsp").setup(palette)
end

return M
