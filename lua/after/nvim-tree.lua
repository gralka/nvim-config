local status, nvimtree = pcall(require, "nvim-tree")

if not status then
  return
end

-- recommended configuration from documentation

vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1

vim.cmd([[ highlight NvimTreeIndentMarker guifg=#B794F3 ]])

nvimtree.setup({
  renderer = {
    icons = {
      glyphs = {
        folder = {
          arrow_closed = "",
          arrow_open = "",
        },
      },
    },
  },
  actions = {
    open_file = {
      window_picker = {
        enable = false,
      },
    },
  },
  view = {
    width = 55,
    side = "right",
  },
})

local km = vim.keymap

km.set("n", "<leader>b", ":NvimTreeToggle<CR>")
