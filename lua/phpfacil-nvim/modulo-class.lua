local opcions = require("phpfacil-nvim.opcions")
local utils = require("phpfacil-nvim.utils")

---@class Class
local M = {}

---@return string
function M.crear_class(nombre)
	utils.insertar_linea("<?php")
	utils.insertar_linea("")
	utils.insertar_linea("declare(strict_types=1);")
	utils.insertar_linea("")
	utils.insertar_linea("namespace añadir\\nombre\\final;")
	utils.insertar_linea("")
	utils.insertar_linea("final class %s extends Example", nombre)
	utils.insertar_linea("{")
	utils.insertar_linea("")
	utils.insertar_linea("public function __construct(){}")
	utils.insertar_linea("")
	utils.insertar_linea("}")
end

return M
