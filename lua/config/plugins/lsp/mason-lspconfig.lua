return {
	{
		"mason-org/mason-lspconfig.nvim",
		opts = {
			ensure_installed = {
				"ts_ls",
				"html",
				"cssls",
				"tailwindcss",
				"lua_ls",
				"eslint",
			},
		},
		dependencies = {
			{ "mason-org/mason.nvim" },
			"neovim/nvim-lspconfig",
		},
	}
}
