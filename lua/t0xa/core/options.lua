local opt = vim.opt -- Shorcut to scip writing vim.opt.* in settings beneath

-- enable line number and relative line number
opt.number = true -- This will show the line number cursor is currently standing
opt.relativenumber = true -- This will enable relative numbers on the left side

-- tabs & indentation
opt.shiftwidth = 2 -- Set spaces for tabs == 2
opt.tabstop = 2 -- Set spaces for indent with == 2
opt.expandtab = true -- use number of spaces to insert a <Tab>
opt.softtabstop = 2

-- search settings
opt.ignorecase = true -- ignore case when searching
opt.smartcase = true -- If mixing cases while searching = you want case-sensitive search

-- Cursor line setting
opt.cursorline = true

-- Turn on termguicolors for colorschemes
-- (Have to use true color terminal to see theese setting work)
opt.termguicolors = true
opt.background = "dark" -- colorschemes that can be light or dark will be made dark
opt.signcolumn = "yes" -- show sigh columns so that text doesn't shift

-- backspace setting
opt.backspace = "indent,eol,start" -- allow backspace on indent, end of line or insert mode start position

-- clipboard
opt.clipboard:append("unnamedplus") -- config to set up clipboard as default register

-- split windows settings
opt.splitright = true -- split vertical window to the right
opt.splitbelow = true -- split horizontal window to the bottom

-- disable swap files creation
opt.swapfile = false

-- Add line at 88 symbols
opt.colorcolumn = "88"
