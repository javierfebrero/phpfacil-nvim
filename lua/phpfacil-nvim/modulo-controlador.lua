local utils = require("phpfacil-nvim.utils")

---@class Controller
local M = {}

---@return string
function M.crear_controller(nombre)
  utils.insertar_linea("<?php")
  utils.insertar_linea("")
  utils.insertar_linea("declare(strict_types=1);")
  utils.insertar_linea("")
  utils.insertar_linea("namespace añadir\\nombre\\final;")
  utils.insertar_linea("")
  utils.insertar_linea("use Example\\BaseController;")
  utils.insertar_linea("")
  utils.insertar_linea("class %sController extends BaseController", nombre)
  utils.insertar_linea("{")
  utils.insertar_linea("")
  utils.insertar_linea("public function index()")
  utils.insertar_linea("{")
  utils.insertar_linea("    // lógica del controlador")
  utils.insertar_linea("}")
  utils.insertar_linea("")
  utils.insertar_linea("}")
end

return M
