vim.api.nvim_create_user_command("PhpFacilFirma", function(ops)
	require("phpfacil-nvim").crear_firma(ops.args)
end, { nargs = "*" })
vim.api.nvim_create_user_command("PhpFacilConstant", function(ops)
	require("phpfacil-nvim").crear_constant(ops.args)
end, { nargs = 1 })
vim.api.nvim_create_user_command("PhpFacilClass", function(ops)
	require("phpfacil-nvim").crear_class(ops.args)
end, { nargs = 1 })
