local lsp = require'lspconfig'
local coq = require'coq'

--coq
vim.g.coq_settings = {
    auto_start = 'shut-up',
    keymap = {
        jump_to_mark = "<C-Space>",
    },
}

require'coq_3p'{
    {src = "nvimlua", short_name = "nLUA", conf_only = true}
}

--no virtual text
vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
    vim.lsp.diagnostic.on_publish_diagnostics,
    { virtual_text = false,}
)

--python
lsp.pylsp.setup(coq.lsp_ensure_capabilities{})

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

--lua
local lua_root_path = '/home/pan/.source/lua-language-server'
local lua_bin = lua_root_path .. '/bin/Linux/lua-language-server'
lsp.sumneko_lua.setup(coq.lsp_ensure_capabilities({
    cmd = {lua_bin,'-E', lua_root_path .. '/main.lua'}
}))

-- tex
lsp.texlab.setup{}
