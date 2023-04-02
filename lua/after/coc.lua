-- Enable coc-tsserver and coc-angular for Angular projects
vim.g.coc_global_extensions = {
  'coc-tsserver',
  'coc-angular'
}

-- Set the root directory for coc-angular to the Angular project root
vim.g.coc_node_root = vim.fn.getcwd()

