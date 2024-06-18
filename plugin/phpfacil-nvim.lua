vim.api.nvim_create_user_command("PhpFacilFirma", function(ops)
	require("phpfacil-nvim").crear_firma(ops.args)
end, { nargs = "*" })
vim.api.nvim_create_user_command("PhpFacilConstant", function(ops)
	require("phpfacil-nvim").crear_constant(ops.args)
end, { nargs = 1 })
vim.api.nvim_create_user_command("PhpFacilClass", function(ops)
	require("phpfacil-nvim").crear_class(ops.args)
end, { nargs = 1 })
vim.api.nvim_create_user_command("PhpFacilAbstractClass", function(ops)
	require("phpfacil-nvim").crear_abstract_class(ops.args)
end, { nargs = 1 })
vim.api.nvim_create_user_command("PhpFacilInterface", function(ops)
	require("phpfacil-nvim").crear_interface(ops.args)
end, { nargs = 1 })
vim.api.nvim_create_user_command("PhpFacilTrait", function(ops)
	require("phpfacil-nvim").crear_trait(ops.args)
end, { nargs = 1 })
vim.api.nvim_create_user_command("PhpFacilEnum", function(ops)
	require("phpfacil-nvim").crear_enum(ops.args)
end, { nargs = 1 })
vim.api.nvim_create_user_command("PhpFacilController", function(ops)
	require("phpfacil-nvim").crear_controlador(ops.args)
end, { nargs = 1 })
vim.api.nvim_create_user_command("PhpFacilComentario", require("phpfacil-nvim").crear_comentario, {})
