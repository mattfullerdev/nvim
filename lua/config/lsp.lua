-- Global LspAttach autocmd for format-on-save
vim.api.nvim_create_autocmd('LspAttach', {
	group = vim.api.nvim_create_augroup('my.lsp', {}),
	callback = function(args)
		local client = vim.lsp.get_client_by_id(args.data.client_id)
		-- Only set up format-on-save if the client supports it
		if client.server_capabilities.documentFormattingProvider then
			vim.api.nvim_create_autocmd('BufWritePre', {
				group = vim.api.nvim_create_augroup('my.lsp', { clear = false }),
				buffer = args.buf,
				callback = function()
					vim.lsp.buf.format({ bufnr = args.buf, timeout_ms = 1000 })
				end,
			})
		end
	end,
})
