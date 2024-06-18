local opcions = require("phpfacil-nvim.opcions")
local utils = require("phpfacil-nvim.utils")

---@class Firma
local M = {}

---@return string
function M.crear_firma()
	for key, linea in pairs(opcions.firma) do
		utils.insertar_linea(linea.linea, linea.valor)
	end
end

return M
