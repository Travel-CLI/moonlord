local lsp_installer = require("nvim-lsp-installer")
lsp_installer.on_server_ready(function(server)
	local opts = {

		-- Подхватим Neovim-cmp
		capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities()),
		on_attach = function(client, bufnr)

			-- Отключим форматирование в пользу null-ls
			client.resolved_capabilities.document_formatting = false
		end
	}
	server:setup(opts)
end)

