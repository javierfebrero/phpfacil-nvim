---@class Opcions

---@field firma string Your config option
local firma = {
	{ linea = "/**", valor = "" },
	{ linea = "* @package		%s", valor = "COM_ODT" },
	{ linea = "* @subpackage	%s ", valor = "odt_package" },
	{ linea = "* @author		%s ", valor = "Javier Fernández Febrero <javiferfeb@live.com>" },
	{ linea = "*/", valor = "" },
}

---@field Constant string Your config option
local constant = {
	{ linea = "const %s = '' ", valor = "CONSTANTE" },
	{ linea = "public function get%s () {", valor = "Constante" },
	{ linea = "return self::%s; ", valor = "CONSTANTE" },
	{ linea = "}", valor = "" },
}

local M = {}

-- ---@type Opcions
M.firma = firma
M.constant = constant

return M
