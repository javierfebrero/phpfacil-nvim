local opcions = require("phpfacil-nvim.opcions")
local utils = require("phpfacil-nvim.utils")

---@class Firma
local M = {}

---@return string
function M.crear_firma(package, subpackage, author, mail)
	utils.insertar_linea("/**")
	utils.insertar_linea("* @package		%s", package)
	utils.insertar_linea("* @subpackage	%s ", subpackage)
	utils.insertar_linea("* @author		%s <%s>", author, mail)
	utils.insertar_linea("*/")
end

return M
