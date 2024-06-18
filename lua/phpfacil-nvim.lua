-- main module file
local modulo_firma = require("phpfacil-nvim.modulo-firma")
local modulo_constant = require("phpfacil-nvim.modulo-constant")
local modulo_class = require("phpfacil-nvim.modulo-class")
local modulo_abstract_class = require("phpfacil-nvim.modulo-abstract-class")
local modulo_controlador = require("phpfacil-nvim.modulo-controlador")
local modulo_enum = require("phpfacil-nvim.modulo-enum")
local modulo_interface = require("phpfacil-nvim.modulo-interface")
local modulo_trait = require("phpfacil-nvim.modulo-trait")
local modulo_comentario = require("phpfacil-nvim.modulo-comentario")

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

M.crear_firma = function(opts)
	local args = vim.split(opts, " ")
	return modulo_firma.crear_firma(args[1], args[2], args[3], args[4])
end

M.crear_class = function(args)
	return modulo_class.crear_class(args)
end
M.crear_constant = function(args)
	return modulo_constant.crear_constant(args)
end
M.crear_abstract_class = function(args)
	return modulo_abstract_class.crear_abstract_class(args)
end
M.crear_controlador = function(args)
	return modulo_controlador.crear_controller(args)
end
M.crear_interface = function(args)
	return modulo_interface.crear_interface(args)
end
M.crear_trait = function(args)
	return modulo_trait.crear_trait(args)
end
M.crear_enum = function(args)
	return modulo_enum.crear_enum(args)
end
M.crear_comentario = function()
	return modulo_comentario.crear_comentario()
end

return M
