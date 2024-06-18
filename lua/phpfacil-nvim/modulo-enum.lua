local utils = require("phpfacil-nvim.utils")

---@class Enum
local M = {}

---@return
function M.crear_enum(nombre)
  utils.insertar_linea("<?php")
  utils.insertar_linea("")
  utils.insertar_linea("declare(strict_types=1);")
  utils.insertar_linea("")
  utils.insertar_linea("namespace añadir\\nombre\\final;")
  utils.insertar_linea("")
  utils.insertar_linea("/**")
  utils.insertar_linea(" * Enum %s", nombre)
  utils.insertar_linea(" *")
  utils.insertar_linea(" * @package añadir\\nombre\\final")
  utils.insertar_linea(" */")
  utils.insertar_linea("enum %s: string", nombre)
  utils.insertar_linea("{")
  utils.insertar_linea("    case EJEMPLO1 = 'ejemplo1';")
  utils.insertar_linea("    case EJEMPLO2 = 'ejemplo2';")
  utils.insertar_linea("    case EJEMPLO3 = 'ejemplo3';")
  utils.insertar_linea("}")
end

return M
