local indent_opt = {
  -- values: softtabstop, expandtab, shiftwidth, tabstop
  tab = { 4, false, 4, 4 },
  spaces = { 4, false, 4, 4 },
}

local tabs = { 'go', 'c' }
local spaces = { 'python', 'java', 'css', 'scss', 'html', 'json' }

local function set_indent(opt)
  vim.opt_local.softtabstop = indent_opt[opt][1]
  vim.opt_local.expandtab = indent_opt[opt][2]
  vim.opt_local.shiftwidth = indent_opt[opt][3]
  vim.opt_local.tabstop = indent_opt[opt][4]
end

vim.api.nvim_create_autocmd('FileType', {
  pattern = tabs,
  callback = function()
    set_indent("tab")
  end,
})

vim.api.nvim_create_autocmd('FileType', {
  pattern = spaces,
  callback = function()
    set_indent("spaces")
  end,
})
