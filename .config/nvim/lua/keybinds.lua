local function map(mode, lhs, rhs, opts)
  local options = {noremap = true}
  if opts then options = vim.tbl_extend('force', options, opts) end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

map('n','<leader>w',':w<CR>')
map('n','<leader>q',':q<CR>')
map('n','<leader>c',':COQnow --shut-up<CR>')
map('n','<leader>f','<cmd>lua vim.lsp.buf.formatting()<CR>')
