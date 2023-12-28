-- See `:help mapleader`
--  NOTE: Must happen before plugins are required (otherwise wrong leader will be used)
vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)
vim.keymap.set('n', '<leader>w', vim.cmd.w, { desc = 'save file' })
vim.keymap.set('n', '<leader>q', vim.cmd.q, { desc = 'save file' })
-- vim.keymap.set('n', '<leader>pt', vim.cmd.NvimTreeToggle)
vim.keymap.set('n', '<leader>fm', vim.cmd.Format, { desc = 'Format the file using :Format' })
vim.keymap.set('n', '<C-;>', vim.cmd.bprevious, { desc = 'Go back to previous buffer' })
vim.keymap.set('n', "<C-'>", vim.cmd.bnext, { desc = 'Go back to previous buffer' })
vim.keymap.set('v', 'z', ":m '>+1<CR>gv=gv", { desc = 'kinda like alt arrow up and down in vscode' })
vim.keymap.set('v', 'x', ":m '<-2<CR>gv=gv")

vim.keymap.set('n', 'J', 'mzJ`z',
  { desc = 'appends the current line above while the cursor is till in the beginning of the line?' })
vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')
vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')
vim.keymap.set('n', '<leader>cn', ':let @/ = ""')
-- vim.keymap.set('n', '<C-f>', '<cmd>silent !tmux neww tmux-sessionizer<CR>')
vim.keymap.set({ 'n', 'v' }, '<leader>y', [["+y]])
vim.keymap.set('n', '<leader>Y', [["+Y]])

vim.keymap.set({ 'n', 'v' }, '<leader>d', [["_d]])
vim.keymap.set('n', '<leader>o', [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set('i', '<C-q>', '<Esc>')
-- vim.notify = require('notify')
-- Flote remap
-- vim.keymap.set('n', '<leader>n', vim.cmd.Flote, { desc = 'Open Flote TODO list.' })

-- toggle floating term
vim.keymap.set({ 'n', 't' }, '<A-t>',
  function()
    require("nvterm.terminal").toggle "float"
  end
)

vim.keymap.set({ 'n', 't' }, '<A-s>',
  function()
    require("nvterm.terminal").toggle "horizontal"
  end
)

vim.keymap.set({ 'n', 't' }, '<A-v>',
  function()
    require("nvterm.terminal").toggle "vertical"
  end
)

-- vim.keymap.set({ 'n', 't' }, '<A-z>',
--   function()
--     require("nvterm.terminal").toggle "horizontal"
--   end
-- )

-- fuzzy file search can be started simply with
-- vim.keymap.set("n", "<c-f>", jfind.findFile)

-- or you can provide more customization
-- for more information, read the "Lua Jfind Interface" section
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
--
-- Move to previous/next
map('n', '<A-,>', '<Cmd>BufferPrevious<CR>', opts)
map('n', '<A-.>', '<Cmd>BufferNext<CR>', opts)
-- Re-order to previous/next
map('n', '<A-[>', '<Cmd>BufferMovePrevious<CR>', opts)
map('n', '<A-]>', '<Cmd>BufferMoveNext<CR>', opts)
-- Goto buffer in position...
map('n', '<A-1>', '<Cmd>BufferGoto 1<CR>', opts)
map('n', '<A-2>', '<Cmd>BufferGoto 2<CR>', opts)
map('n', '<A-3>', '<Cmd>BufferGoto 3<CR>', opts)
map('n', '<A-4>', '<Cmd>BufferGoto 4<CR>', opts)
map('n', '<A-5>', '<Cmd>BufferGoto 5<CR>', opts)
map('n', '<A-6>', '<Cmd>BufferGoto 6<CR>', opts)
map('n', '<A-7>', '<Cmd>BufferGoto 7<CR>', opts)
map('n', '<A-8>', '<Cmd>BufferGoto 8<CR>', opts)
map('n', '<A-9>', '<Cmd>BufferGoto 9<CR>', opts)
map('n', '<A-0>', '<Cmd>BufferLast<CR>', opts)
-- Pin/unpin buffer
map('n', '<A-p>', '<Cmd>BufferPin<CR>', opts)
-- Close buffer
map('n', '<A-c>', '<Cmd>BufferClose<CR>', opts)
