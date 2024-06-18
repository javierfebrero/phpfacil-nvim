---@class Opcions

---@field firma string Your config option
local firma = {
	{ linea = "/**", valor = "" },
	{ linea = "* @package		%s", valor = "COM_ODT" },
	{ linea = "* @subpackage	%s ", valor = "odt_package" },
	{ linea = "* @author		%s ", valor = "Javier_Fernández_Febrero <ffebrero.javier@gmail.com>" },
	{ linea = "*/", valor = "" },
}

---@field Constant string Your config option
local constant = {}

local M = {}

-- ---@type Opcions
M.firma = firma
M.constant = constant

return M
