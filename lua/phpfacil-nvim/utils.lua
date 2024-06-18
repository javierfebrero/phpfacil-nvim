---@class Utils
local M = {}

M.insertar_linea = function(linea, valor)
	local linea_formateada = string.format(linea, valor)
	vim.api.nvim_put({ linea_formateada }, "l", false, true)
end

M.convertir_mayusculas = function(nombre)
	return string.upper(nombre)
end

M.convertir_minusculas = function(nombre)
	return string.lower(nombre)
end

M.nombre_getter = function(nombre)
	local lower_name = string.lower(nombre)
	local replacedUnderscores = lower_name:gsub("_", " ")

	local nombreformateado = replacedUnderscores:gsub("(%a)([%w_']*)", function(first, rest)
		return first:upper() .. rest
	end)

	local getternombre = nombreformateado:gsub(" ", "")
	return getternombre
end

return M
