-- Ensure mason.nvim and mason-lspconfig.nvim are loaded
require("mason").setup()
require("mason-lspconfig").setup()

local config = require("plugins.configs.lspconfig")

local on_attach = config.on_attach
local capabilities = config.capabilities

local lspconfig = require("lspconfig")
local servers = {
  "pyright",
  "lua_ls",
}

-- NvChad
-- https://nvchad.com/docs/config/lsp
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup({
    on_attach = on_attach,
    capabilities = capabilities,
  })
end

-- Set vim as a global variable
-- https://www.reddit.com/r/neovim/comments/khk335/lua_configuration_global_vim_is_undefined/
lspconfig.lua_ls.setup({
  settings = {
    Lua = {
      diagnostics = {
        globals = { "vim" }
      }
    }
  }
})

-- Dreams of Code config
--lspconfig.pyright.setup({
--  on_attach = on_attach,
--  capabilities = capabilities,
--  filetypes = {"python"},
--})
--
--lspconfig.lua_ls.setup({
--  on_attach = on_attach,
--  capabilities = capabilities,
--  filetypes = {"lua"},
--})
