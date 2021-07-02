-- local config = require'lspconfig'.jdtls.document_config
-- require'lspconfig/config'.jdtls = nil

-- require'lspinstall/servers'.jdtls = vim.tbl_extend('error', config, {
-- 	install_script = [[
-- 		git clone https://github.com/eclipse/eclipse.jdt.ls.git
-- 		cd eclipse.jdt.ls
-- 		./mvnw clean verify
-- 	]],
-- 	uninstall_script = nil
-- })

-- require'lspinstall/servers'.kotlin = vim.tbl_extend('error', config, {
-- 	install_script = [[
-- 		git clone https://github.com/fwcd/kotlin-language-server.git language-server
--     	cd language-server
-- 		./gradlew :server:installDist
-- 	]],
-- 	uninstall_script = nil
-- })

-- require'lspinstall'.setup()
