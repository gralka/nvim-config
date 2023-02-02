local km = vim.keymap

-- § GENERAL KEYBINDINGS

km.set("i", "jk", "<ESC>") -- enter Normal mode by hitting "jk" consecutively in Insert mode
km.set("n", "x", '"_x') -- x doesn't store deleted character
km.set("n", "<S-j>", "mzJ`z") -- join while keeping cursor where it's at
km.set("n", "<S-y>", "yg$") -- yank from current position to the end of the line (like <S-d> for deletion)

-- saving and quitting

km.set("n", "<leader>s", ":w<CR>") -- quickly save
km.set("n", "<leader><S-q>", ":qall<CR>") -- quickly quit all
km.set("n", "<leader>c", ":close<CR>") -- close buffer 

-- § MOVEMENT

km.set("n", "<S-h>", "^") -- quickly get to the start of the current line
km.set("n", "<S-l>", "g_") -- quickly get to the end of the line

km.set("v", "<S-j>", ":m '>+1<CR>gv=gv") -- move text blocks down 
km.set("v", "<S-k>", ":m '<-2<CR>gv=gv") -- move text blocks up

km.set("n", "<C-d>", "<C-d>zz") -- page down and center the cursor in the buffer
km.set("n", "<C-u>", "<C-u>zz") -- page up and center the cursor in the buffer

km.set("n", "n", "nzz") -- center the cursor in the buffer after advancing to the next search result
km.set("n", "N", "Nzz") -- page up and center the cursor in the buffer after advancing to the previous search result

-- § CUTTING, COPYING, & PASTING

km.set("x", "<leader>p", "\"_dP") -- do not lose pasted text when highlight-pasting

-- copy text to system clipboard

km.set("n", "<leader>y", "\"+y") -- copy to system clipboard
km.set("n", "<leader><S-y>", "\"+Y") -- copy the rest of the line to the clipboard
km.set("v", "<leader>y", "\"+y") -- copy to the system clipoard from Visual mode

-- delete to void

km.set("n", "<leader>d", "\"_d")
km.set("n", "<leader><S-d>", "\"_D")
km.set("v", "<leader>d", "\"_d")

-- § SPLITTING WINDOWS

km.set("n", "<leader><space>v", "<C-w>v") -- split vertically
km.set("n", "<leader><space>s", "<C-w>s") -- split horizontally
km.set("n", "<leader><space>e", "<C-w>=") -- make splits even

-- quick split navigation

km.set("n", "<leader><space>h", "<C-w>h") -- move left
km.set("n", "<leader><space>j", "<C-w>j") -- move down
km.set("n", "<leader><space>k", "<C-w>k") -- move up
km.set("n", "<leader><space>l", "<C-w>l") -- move right

-- § WORKING WITH TABS 

km.set("n", "<leader>to", ":tabnew<CR>") -- open a new tab
km.set("n", "<leader>tq", ":tabclose<CR>") -- close current tab
km.set("n", "<leader>tn", ":tabn<CR>") -- go to next tab
km.set("n", "<leader>tp", ":tabp<CR>") -- go to previous tab

-- moving tabs

km.set("n", "<leader>tmf", ":tabmove 0<CR>") -- move tab to first position
km.set("n", "<leader>tm0", ":tabmove 0<CR>") -- move tab to position 0
km.set("n", "<leader>tm1", ":tabmove 1<CR>") -- move tab to position 1
km.set("n", "<leader>tm2", ":tabmove 2<CR>") -- move tab to position 2
km.set("n", "<leader>tm3", ":tabmove 3<CR>") -- move tab to position 3
km.set("n", "<leader>tm4", ":tabmove 4<CR>") -- move tab to position 4
km.set("n", "<leader>tm5", ":tabmove 5<CR>") -- move tab to position 5
km.set("n", "<leader>tm6", ":tabmove 6<CR>") -- move tab to position 6
km.set("n", "<leader>tm7", ":tabmove 7<CR>") -- move tab to position 7
km.set("n", "<leader>tm8", ":tabmove 8<CR>") -- move tab to position 8
km.set("n", "<leader>tm9", ":tabmove 9<CR>") -- move tab to position 9

-- quickfix navigation

km.set("n", "<leader><S-j>", "<cmd>cnext<CR>zz")
km.set("n", "<leader><S-k>", "<cmd>cprevious<CR>zz")
km.set("n", "<leader>j", "<cmd>lnext<CR>zz")
km.set("n", "<leader>k", "<cmd>lprevious<CR>zz")

-- § PLUGIN-SPECIFIC BINDINGS

-- nvim-tree

km.set("n", "<leader>b", ":NvimTreeToggle<CR>")

-- LSP

km.set("n", "<leader>lr", ":LspRestart<CR>")
