local options = {
    autoindent = true, -- autoindent
    background = "dark", -- enable dark color themes
    backup = false, -- creates a backup fule
    backspace = "indent,eol,start", -- backspace functionality
    clipboard = "", -- allow nvim to access the system clipboard
    colorcolumn = "80",
    cursorline = true, -- show the current line where the cursor is
    expandtab = true, -- converts tabs to spaces
    hlsearch = false, -- highlight matches
    incsearch = true, -- incremental search
    ignorecase = true, -- ignore case when searching
    mouse = "a", -- allow the mouse
    number = true, -- line numbers
    relativenumber = true, -- relative line numbers
    scrolloff = 8, -- additional scrolling at the bottom
    shiftwidth = 2, -- number of spaces inserted with each indentation
    signcolumn = "yes", -- show the sign column
    smartcase = true, -- smart case
    smartindent = true, -- use smart indenting
    softtabstop = 2,
    splitbelow = true, -- create horizontal splits below
    splitright = true, -- create vertical splits to the right
    swapfile = false, -- disable swapfile creations; they suck
    tabstop = 2, -- inserts 2 spaces for a tab
    termguicolors = true, -- use terminal colors
    timeoutlen = 1000, -- time to wait for a mapped sequence to complete
    undodir = os.getenv("HOME") .. "/.vim/undodir", -- sets up the undo directory locally
    undofile = true, -- enables the undo file
    updatetime = 50, -- fast update time
    wrap = false -- disable text wraping
}

for k, v in pairs(options) do
	vim.opt[k] = v
end

vim.g.mapleader = " " -- set the leader

-- set the color theme
vim.cmd("colorscheme gruvbox")

-- set the background transparency
vim.cmd("highlight Normal guibg=none")
vim.cmd("highlight Normal ctermbg=none")
