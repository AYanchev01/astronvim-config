---@type LazySpec
return {
  "nvim-treesitter/nvim-treesitter",
  opts = function(_, opts)
    -- Add CAPL file recognition
    vim.api.nvim_create_autocmd({"BufRead", "BufNewFile"}, {
      pattern = {"*.can", "*.cin"},
      callback = function()
        vim.bo.filetype = "c"
      end,
    })
    -- add more things to the ensure_installed table protecting against community packs modifying it
    opts.ensure_installed = require("astrocore").list_insert_unique(opts.ensure_installed, {
      "lua",
      "luadoc",
      "vim",
      "vimdoc",
      "cpp",
      "python",
      "bash",
    })
    opts.textobjects.swap.enable = false 
  end,
}
