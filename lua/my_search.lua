local M = {}

function M.start_search()
  -- Get the word under the cursor and set the search register
  vim.fn.setreg('/', '\\<' .. vim.fn.expand('<cword>') .. '\\>')
  -- Start the search
  vim.api.nvim_feedkeys('/', 'n', false)
end

return M

