-- colors/martinaise.lua
package.loaded["martinaise"] = nil
package.loaded["martinaise.highlights"] = nil

vim.cmd("hi clear")
vim.cmd("syntax reset")

vim.o.background = "dark"
vim.o.termguicolors = true
vim.g.colors_name = "martinaise"

require("martinaise").load()
