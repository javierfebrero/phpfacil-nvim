local utils = require("phpfacil-nvim.utils")

---@class Interface
local M = {}

---@return string
function M.crear_interface(nombre)
  utils.insertar_linea("<?php")
  utils.insertar_linea("")
  utils.insertar_linea("declare(strict_types=1);")
  utils.insertar_linea("")
  utils.insertar_linea("namespace añadir\\nombre\\final;")
  utils.insertar_linea("")
  utils.insertar_linea("interface %s", nombre)
  utils.insertar_linea("{")
  utils.insertar_linea("")
  utils.insertar_linea("public function metodoEjemplo(): void;")
  utils.insertar_linea("")
  utils.insertar_linea("}")
end

return M
