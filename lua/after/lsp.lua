local status, lsp = pcall(require, 'lsp-zero')

if not status then
  return
end

lsp.preset('recommended')

lsp.ensure_installed({
  'tsserver',
  'eslint'
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
  km.set("n", "<leader>vh", function () vim.lsp.buf.signature_help() end, opts)
end)

lsp.setup()

local status_cmp, cmp = pcall(require, 'cmp')

if not status_cmp then
  return
end

local cmp_config = {
  mapping  = {
    ['<C-k>'] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Select }),
    ['<C-j>'] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Select }),
  }
}

cmp.setup(cmp_config)
