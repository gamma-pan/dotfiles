local lsp = require'lspconfig'
local coq = require'coq'

--coq
vim.g.coq_settings = {
    keymap = {
        jump_to_mark = "<C-Space>",
    },
    auto_start = "shut-up",
}

require'coq_3p'{
    {src = "nvimlua", short_name = "nLUA", conf_only = true}
}

--no virtual text
vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
    vim.lsp.diagnostic.on_publish_diagnostics,
    {
        virtual_text = false,
        severity_sort = true,
    }
)
--don't focus floating window
vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(
    vim.lsp.handlers.hover, { focusable = false }
)

--python
lsp.pylsp.setup(coq.lsp_ensure_capabilities{})

--angular
local languageServerPath = "/usr/local/lib"
local cmd = {"ngserver", languageServerPath.."/node_modules/@angular/language-server/index.js", "--stdio", "--tsProbeLocations", languageServerPath, "--ngProbeLocations", languageServerPath}
lsp.angularls.setup(coq.lsp_ensure_capabilities{
    cmd = cmd,
})

--typescript
lsp.tsserver.setup(coq.lsp_ensure_capabilities{
})

--sumneko lua
local lua_root_path = '/home/pan/.source/lua-language-server'
local lua_bin = lua_root_path .. '/bin/Linux/lua-language-server'
lsp.sumneko_lua.setup(coq.lsp_ensure_capabilities({
    cmd = {lua_bin,'-E', lua_root_path .. '/main.lua'},
    settings = {
        Lua = {
            runtime = {
                version = 'LuaJIT',
                path = vim.split(package.path, ';'),
            },
            diagnostics = {
                globals = {'vim'},
            },
            workspace = {
                library = vim.api.nvim_get_runtime_file("",true),
            },
        }
    }
}))

-- tex
local tex_aux_dir = "./." .. vim.fn.expand("%") .. "-aux"
lsp.texlab.setup(coq.lsp_ensure_capabilities({
    settings = {
        texlab = {
            auxDirectory = '/home/pan/Desktop'
        }
    }
}))
