local lsp = require'lspconfig'
local coq = require'coq'

--coq
vim.g.coq_settings = {
    keymap = {
        jump_to_mark = "<C-Space>"
    },
}

require'coq_3p'{
    {src = "nvimlua", short_name = "nLUA", conf_only = true}
}

--lspsaga
require'lspsaga'.init_lsp_saga{
    border_style = 'round',
}

--python 
lsp.pyright.setup({})

--angular
local languageServerPath = "/usr/local/lib"
local cmd = {"ngserver", languageServerPath.."/node_modules/@angular/language-server/index.js", "--stdio", "--tsProbeLocations", languageServerPath, "--ngProbeLocations", languageServerPath}
lsp.angularls.setup(coq.lsp_ensure_capabilities{
    on_attach = on_attach,
    capabilities = capabilities,
    cmd = cmd,
    on_new_config = function(new_config,new_root_dir)
        new_config.cmd = cmd
    end,
})
    
--typescript
lsp.tsserver.setup(coq.lsp_ensure_capabilities{
    on_attach = on_attach,
    capabilities = capabilities,
})

