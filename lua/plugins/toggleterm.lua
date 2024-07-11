return {
  "akinsho/toggleterm.nvim",
  dependencies = {
    {
      "AstroNvim/astrocore",
      opts = function(_, opts)
        local maps = opts.mappings
        local astro = require "astrocore"
        maps.n["`"] = { '<Cmd>execute v:count . "ToggleTerm"<CR>', desc = "Toggle terminal" }
        maps.t["`"] = { "<Cmd>ToggleTerm<CR>", desc = maps.n["`"].desc }
        maps.i["`"] = { "<Esc>" .. maps.t["`"][1], desc = maps.n["`"].desc }

        local serpl = {
          callback = function()
            astro.toggle_term_cmd "serpl"
          end,
          desc = "ToggleTerm serpl",
        }
        maps.n["<Leader>fp"] = { serpl.callback, desc = serpl.desc }
      end,
    },
  },
  opts = {
    ---@param t Terminal
    on_create = function(t)
      if t.hidden then
        local toggle = function() t:toggle() end
        vim.keymap.set({ "n", "t", "i" }, "`", toggle, { desc = "Toggle terminal", buffer = t.bufnr })
      end
    end,
  },
}
