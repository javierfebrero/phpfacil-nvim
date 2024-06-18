local utils = require("phpfacil-nvim.utils")

---@class Trait
local M = {}

---@return string
function M.crear_trait(nombre)
  utils.insertar_linea("<?php")
  utils.insertar_linea("")
  utils.insertar_linea("declare(strict_types=1);")
  utils.insertar_linea("")
  utils.insertar_linea("namespace añadir\\nombre\\final;")
  utils.insertar_linea("")
  utils.insertar_linea("trait %s", nombre)
  utils.insertar_linea("{")
  utils.insertar_linea("")
  utils.insertar_linea("public function metodoEjemplo()")
  utils.insertar_linea("{")
  utils.insertar_linea("    // implementación")
  utils.insertar_linea("}")
  utils.insertar_linea("")
  utils.insertar_linea("}")
end

return M
