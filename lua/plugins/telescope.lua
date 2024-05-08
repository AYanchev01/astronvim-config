return {
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
     "nvim-telescope/telescope-live-grep-args.nvim",
      {
        "AstroNvim/astrocore",
        opts = function(_, opts)
          local maps = opts.mappings
          maps.n["<Leader>sm"] = { function() require("telescope.builtin").marks() end, desc = "Find marks" }
          maps.n["<Leader>fw"] = { function() require("telescope").extensions.live_grep_args.live_grep_args() end, desc = "Find words"}
        end,
      },
    },
    opts = function()
      local actions = require "telescope.actions"
      local lga_actions = require("telescope-live-grep-args.actions")
      local get_icon = require("astroui").get_icon
      return {
        defaults = {
          git_worktrees = require("astrocore").config.git_worktrees,
          prompt_prefix = get_icon("Selected", 1),
          selection_caret = get_icon("Selected", 1),
          path_display = { "truncate" },
          sorting_strategy = "ascending",
          layout_config = {
            horizontal = { prompt_position = "top", preview_width = 0.55 },
            vertical = { mirror = false },
            width = 0.87,
            height = 0.80,
            preview_cutoff = 120,
          },
          mappings = {
            i = {
              ["<C-N>"] = actions.cycle_history_next,
              ["<C-P>"] = actions.cycle_history_prev,
              ["<C-J>"] = actions.move_selection_next,
              ["<C-K>"] = actions.move_selection_previous,
            },
            n = { q = actions.close },
          },
        },
        extensions = {
          live_grep_args = {
            auto_quoting = true,
              mappings = {
                i = {
                  ["<C-q>"] = lga_actions.quote_prompt(),
                  ["<C-i>"] = lga_actions.quote_prompt({ postfix = " --iglob " }),
                },
              },
          }
        }
      }
    end,
    config = function(plugin, opts)
      require("astronvim.plugins.configs.telescope")(plugin,opts)
      require("telescope").load_extension("live_grep_args")
    end
  },
}
