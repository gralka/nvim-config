local status, lsp = pcall(require, 'lsp-zero')

if not status then
  return
end

lsp.preset('recommended')

lsp.ensure_installed({
  'tsserver',
  'eslint',
  'sumneko_lua'
})

lsp.nvim_workspace()

lsp.on_attach(function (client, buffer)
  local opts = { buffer = bufnr, remap = false }
  local km = vim.keymap

  km.set("n", "gd", function () vim.lsp.buf.definition() end, opts)
  km.set("n", "K", function () vim.lsp.buf.hover() end, opts)
  km.set("n", "<leader>vws", function () vim.lsp.buf.workspace_symbol() end, opts)
  km.set("n", "<leader>vd", function () vim.diagnostic.open_float() end, opts)
  km.set("n", "[d", function () vim.diagnostic.goto_next() end, opts)
  km.set("n", "]d", function () vim.diagnostic.get_prev() end, opts)
  km.set("n", "<leader>vca", function () vim.lsp.buf.code_action() end, opts)
  km.set("n", "<leader>vrr", function () vim.lsp.buf.references() end, opts)
  km.set("n", "<leader>vrn", function () vim.lsp.buf.rename() end, opts)
  km.set("n", "<C-h>", function () vim.lsp.buf.signature_help() end, opts)
end)

lsp.setup()
