local telescope_status, telescope = pcall(require, "telescope")
local builtin_setup, builtin = pcall(require, 'telescope.builtin')
local themes_setup, themes = pcall(require, 'telescope.themes')

if not telescope_status or not builtin_setup or not themes_setup then
  return
end

vim.keymap.set("n", "<leader>pf", function ()
  builtin.find_files(themes.get_dropdown())
end, {})

vim.keymap.set("n", "<leader>pg", function ()
  builtin.git_files(themes.get_dropdown())
end, {})

vim.keymap.set("n", "<leader>ps", function ()
  builtin.grep_string({ search = vim.fn.input("Search > ") })
end, {})

vim.keymap.set("n", "<leader>pb", builtin.buffers, {})
vim.keymap.set("n", "<leader>ph", builtin.help_tags, {})

local actions_setup, actions = pcall(require, "telescope.actions")

if not actions_setup then
  return
end

telescope.setup({
  defaults = {
    mappings = {
      i = {
        ["<C-k>"] = actions.move_selection_previous,
        ["<C-j>"] = actions.move_selection_next,
        ["<C-q>"] = actions.add_selected_to_qflist + actions.open_qflist,
      },
    },
  },
})

telescope.load_extension("fzf")
