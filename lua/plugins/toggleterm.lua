return {
  "akinsho/toggleterm.nvim",
  dependencies = {
    {
      "AstroNvim/astrocore",
      opts = function(_, opts)
        local maps = opts.mappings
        maps.n["`"] = { '<Cmd>execute v:count . "ToggleTerm"<CR>', desc = "Toggle terminal" }
        maps.t["`"] = { "<Cmd>ToggleTerm<CR>", desc = maps.n["`"].desc }
        maps.i["`"] = { "<Esc>" .. maps.t["`"][1], desc = maps.n["`"].desc }
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
