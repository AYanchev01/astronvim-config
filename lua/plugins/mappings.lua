return {
  {
    "AstroNvim/astrocore",
    opts = {
      mappings = {
        n = {
          ["d"] = { '"_d', desc = "Delete without yank" },
          ["D"] = { '"_D', desc = "Delete line without yank" },
          ["dd"] = { '"_dd', desc = "Delete line without yank" },
          ["c"] = { '"_c', desc = "Change without yank" },
          ["C"] = { '"_C', desc = "Change line without yank" },
          ["cc"] = { '"_cc', desc = "Change line without yank" },
          ["<C-d>"] = { "<C-d>zz", desc = "Page down and recenter" },
          ["<C-u>"] = { "<C-u>zz", desc = "Page up and recenter" },
          ["H"] = { "^", desc = "Go to start of line" },
          ["L"] = { "$", desc = "Go to end of line" },
          ["m"] = { "%", desc = "Jump to matching bracket" },
          ["<Leader>v"] = { "<Cmd>vsplit<CR>", desc = "Vertical Split" },
          ["<Leader>h"] = { "<Cmd>split<CR>", desc = "Horizontal Split" },
          ["<Leader>m"] = { "m", desc = "Set mark" },
          ["/"] = { ":lua require'my_search'.start_search()<CR>", desc = "Search word under cursor" },
        },
        v = {
          ["d"] = { '"_d', desc = "Delete without yank" },
          ["D"] = { '"_D', desc = "Delete line without yank" },
          ["c"] = { '"_c', desc = "Change without yank" },
          ["C"] = { '"_C', desc = "Change line without yank" },
          ["<C-d>"] = { "<C-d>zz", desc = "Page down and recenter" },
          ["<C-u>"] = { "<C-u>zz", desc = "Page up and recenter" },
          ["H"] = { "^", desc = "Go to start of visual line" },
          ["L"] = { "$", desc = "Go to end of visual line" },
          ["m"] = { "%", desc = "Jump to matching bracket" },
        },
        o = {
          ["H"] = { "^", desc = "Go to start of line" },
          ["L"] = { "$", desc = "Go to end of line" },
          ["m"] = { "%", desc = "Jump to matching bracket" },
        },
        i = {
          ["<C-h>"] = { "<left>", desc = "Move cursor left" },
          ["<C-l>"] = { "<right>", desc = "Move cursor right" },
        },
      },
    },
  },
}

