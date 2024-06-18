local opcions = require("phpfacil-nvim.opcions")
local utils = require("phpfacil-nvim.utils")

---@class Constante
local M = {}

---@return string
function M.crear_constant(nombre)
	utils.insertar_linea("const %s = ''", utils.convertir_mayusculas(nombre))
	utils.insertar_linea("")
	utils.insertar_linea("public function get%s () {", utils.nombre_getter(nombre))
	utils.insertar_linea("    return self::%s; ", utils.convertir_mayusculas(nombre))
	utils.insertar_linea("}")
end

return M
