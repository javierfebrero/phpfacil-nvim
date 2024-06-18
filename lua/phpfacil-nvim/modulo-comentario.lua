local utils = require("phpfacil-nvim.utils")

---@class Class
local M = {}

---@return string
function M.crear_comentario()
  utils.insertar_linea("/**")
  utils.insertar_linea("*")
  utils.insertar_linea(" */")

  -- Mover el cursor al centro del bloque de comentario
  vim.cmd("normal! kk")  -- Mueve hacia arriba dos líneas
  vim.cmd("startinsert!") -- Entra en modo de inserción
end

return M
