return {
  "lewis6991/gitsigns.nvim",
  dependencies = {
    {
      "AstroNvim/astrocore",
      opts = function(_, opts)
        local maps = opts.mappings
        maps.n["<Leader>gn"] = { function() require("gitsigns").next_hunk() end, desc = "Next Git hunk" }
        maps.n["<Leader>gN"] = { function() require("gitsigns").prev_hunk() end, desc = "Previous Git hunk" }
      end,
    },
  },
}
