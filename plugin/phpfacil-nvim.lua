vim.api.nvim_create_user_command("PhpFacilFirma", require("phpfacil-nvim").crear_firma, {})
-- vim.api.nvim_create_user_command("PhpFacilClass", require("phpfacil-nvim").crear_class, {})
vim.api.nvim_create_user_command("PhpFacilConstant", function(ops)
	require("phpfacil-nvim").crear_constant(ops.args)
end, { nargs = 1 })
