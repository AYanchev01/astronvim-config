---@type LazySpec
return {
  "AstroNvim/astrolsp",
  ---@type AstroLSPOpts
  opts = {
    -- Configuration table of features provided by AstroLSP
    mappings = {
      n = {
        ["<Leader>o"] = {
          function()
            vim.cmd("ClangdSwitchSourceHeader")
          end,
          desc = "Switch between header and source files",
          -- Condition to check if the attached LSP is clangd
          cond = function()
            local clients = vim.lsp.get_active_clients()
            for _, client in ipairs(clients) do
              if client.name == "clangd" then
                return true
              end
            end
            return false
          end,
        },
      },
    },
    formatting = {
      format_on_save = false,
    },
  },
}
