return {
  "nvim-neo-tree/neo-tree.nvim",
  dependencies = {
    { "nvim-lua/plenary.nvim", lazy = true },
    { "MunifTanjim/nui.nvim", lazy = true },
    {
      "AstroNvim/astrocore",
      opts = function(_, opts)
        local maps = opts.mappings
        maps.n["<Leader>s"] = { "<Cmd>Neotree toggle<CR>", desc = "Toggle Explorer" }
        maps.n["<Leader>e"] = {
          function()
            if vim.bo.filetype == "neo-tree" then
              vim.cmd.wincmd "p"
            else
              vim.cmd.Neotree "focus"
            end
          end,
          desc = "Toggle Explorer Focus",
        }
      end,
    },
  },
}
