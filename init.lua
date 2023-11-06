local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })
--

autocmd({"FileType"}, {
  pattern = {'tf', 'tfvars'},
  callback = function()
    vim.lsp.start({
      name = 'terraform-ls',
      cmd = { 'terraform-ls', 'serve' },
    })
  end,
})

autocmd('FileType', {
  pattern = 'sh',
  callback = function()
    vim.lsp.start({
      name = 'bash-language-server',
      cmd = { 'bash-language-server', 'start' },
    })
  end,
})
