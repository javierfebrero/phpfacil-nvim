-- main module file
local modulo_firma = require("phpfacil-nvim.modulo-firma")
local modulo_constant = require("phpfacil-nvim.modulo-constant")

---@class Config
---@field opt string Your config option
local config = {
	package = "Hello",
	subpackage = "Hello",
	author = "Hello",
	mail = "Hello",
}

---@class MyModule
local M = {}

---@type Config
M.config = config

---@param args Config?
---
---
M.setup = function(args)
	M.config = vim.tbl_deep_extend("force", M.config, args or {})
end

M.crear_firma = function()
	return modulo_firma.crear_firma()
end

-- M.crear_class = function()
-- 	return module.crear_firma()
-- end
M.crear_constant = function(args)
	return modulo_constant.crear_constant(args)
end
return M
