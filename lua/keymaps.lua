local km = vim.keymap

-- general keybindings
km.set("i", "jk", "<ESC>") -- enter Normal mode by hitting "jk" consecutively in Insert mode
km.set("n", "<S-h>", "^") -- quickly get to the start of the current line
km.set("n", "<S-l>", "g_") -- quickly get to the end of the line
km.set("n", "<S-y>", "yg$") -- yank from current position to the end of the line (like <S-d> for deletion)
km.set("n", "x", '"_x') -- x doesn't store deleted character

km.set("n", "<leader><space>", ":nohl<CR>") -- clears highlighted results

km.set("v", "<S-j>", ":m '>+1<CR>gv=gv") -- move text blocks down 
km.set("v", "<S-k>", ":m '<-2<CR>gv=gv") -- move text blocks up

km.set("n", "<S-j>", "mzJ`z") -- join while keeping cursor where it's at

km.set("n", "<C-d>", "<C-d>zz") -- page down and center the cursor in the buffer
km.set("n", "<C-u>", "<C-u>zz") -- page up and center the cursor in the buffer

km.set("x", "<leader>p", "\"_dP") -- do not lose pasted text when highlight-pasting

-- copy text to system clipboard
km.set("n", "<leader>y", "\"+y")
km.set("n", "<leader><S-y>", "\"+Y")
km.set("v", "<leader>y", "\"+y")

-- delete to void
km.set("n", "<leader>d", "\"_d")
km.set("n", "<leader><S-d>", "\"_D")
km.set("v", "<leader>d", "\"_d")

-- splitting
km.set("n", "<leader>wv", "<C-w>v") -- split vertically
km.set("n", "<leader>ws", "<C-w>s") -- split horizontally
km.set("n", "<leader>we", "<C-w>=") -- make splits even

-- quick split navigation
km.set("n", "<leader>wh", "<C-w>h<CR>") -- quickly save
km.set("n", "<leader>wj", "<C-w>j<CR>") -- quickly save
km.set("n", "<leader>wk", "<C-w>k<CR>") -- quickly save
km.set("n", "<leader>wl", "<C-w>l<CR>") -- quickly save

-- tabs
km.set("n", "<leader>to", ":tabnew<CR>") -- open a new tab
km.set("n", "<leader>tq", ":tabclose<CR>") -- close current tab
km.set("n", "<leader>tn", ":tabn<CR>") -- go to next tab
km.set("n", "<leader>tp", ":tabp<CR>") -- go to previous tab

-- saving and quitting
km.set("n", "<leader>s", ":w<CR>") -- quickly save
km.set("n", "<leader>q", ":q<CR>") -- quickly quit
km.set("n", "<leader><S-q>", ":qall<CR>") -- quickly quit all
km.set("n", "<leader><S-q><S-1>", ":qall!<CR>") -- quickly force quit all
km.set("n", "<leader>c", ":close<CR>") -- close buffer 

-- incrementing/decrementing numbers
km.set("n", "<leader>+", "<C-a>") -- increments a highlighted number
km.set("n", "<leader>-", "<C-x>") -- decrements a highlighted number

-- vim-maximizer
-- km.set("n", "<leader>sm", ":MaximizerToggle<CR>")

-- nvim-tree
km.set("n", "<leader>b", ":NvimTreeToggle<CR>")
