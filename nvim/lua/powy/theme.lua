--------------------------------------------Gruvbox theme ------------------------------------------
-- require 'lualine'.setup {
--     options = {
--         theme = 'gruvbox-material',
--     },
-- }
--
-- vim.g.gruvbox_material_better_performance = 1
-- vim.g.gruvbox_material_background = 'hard'
-- -- vim.g.gruvbox_material_transparent_background = 1
-- vim.g.gruvbox_material_diagnostic_text_highlight = 1
-- vim.g.gruvbox_material_diagnostic_line_highlight = 1
-- vim.g.gruvbox_material_diagnostic_virtual_text = 'grey'
--
--
-- vim.cmd.colorscheme 'gruvbox-material'
------------------------------------------- No-clown-fiesta theme --------------------------------------------------
-- require("no-clown-fiesta").setup({
--     transparent = false, -- Enable this to disable the bg color
--     styles = {
--         -- You can set any of the style values specified for `:h nvim_set_hl`
--         comments = {},
--         keywords = {},
--         functions = {},
--         variables = {},
--         type = { bold = true },
--         lsp = { underline = true }
--     },
-- })
-- vim.cmd.colorscheme 'no-clown-fiesta'
------------------------------------------- Gruber darker --------------------------------------------------
require("gruber-darker").setup({
    bold = true,
    italic = {
        strings = false,
        comments = false,
        operators = false,
        folds = false,
    }
})
vim.cmd.colorscheme 'gruber-darker'
------------------------------------------- Misc --------------------------------------------------
-- set line number color
-- vim.api.set
-- vim.api.nvim_set_hl(0, 'LineNr', { fg = '#cba6f7', bold = false })
-- :hi linenr guibg=#000000 guifg=#ffffff

-- vim.opt.background = "dark"
-- vim.opt.termguicolors = true
-- vim.api.nvim_set_hl(0, 'normal', { bg = 'none', fg = 'none', })
-- vim.api.nvim_set_hl(0, 'normalfloat', { bg = 'none', fg = 'none', })
vim.opt.cursorline = true
vim.opt.cursorlineopt = "number"
vim.api.nvim_set_hl(0, 'CursorLineNr', { fg = '#FFDD33', bold = false })
require("transparent").setup({ -- Optional, you don't have to run setup.
    groups = {                 -- table: default groups
        'Normal', 'NormalNC', 'Comment', 'Constant', 'Special', 'Identifier',
        'Statement', 'PreProc', 'Type', 'Underlined', 'Todo', 'String', 'Function',
        'Conditional', 'Repeat', 'Operator', 'Structure', 'LineNr', 'NonText',
        'SignColumn', 'CursorLineNr', 'EndOfBuffer',
    },
    extra_groups = {},   -- table: additional groups that should be cleared
    exclude_groups = {}, -- table: groups you don't want to clear
})
vim.g.transparent_enabled = true
require("mason").setup({
    ui = {
        border = "rounded"
    }
})
