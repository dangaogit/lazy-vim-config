-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
-- This file is automatically loaded by plugins.core

vim.g.encoding = "UTF-8"
vim.o.fileencoding = "utf-8"
vim.o.scrolloff = 8
vim.o.sidescrolloff = 8
vim.o.relativenumber = false
vim.o.tabstop = 4
vim.bo.tabstop = 2
vim.o.softtabstop = 2
vim.o.expandtab = true
vim.bo.expandtab = true
vim.wo.signcolumn = "yes"
vim.wo.colorcolumn = "120"
vim.o.autoindent = true
vim.bo.autoindent = true
vim.o.smartindent = true
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.incsearch = true
vim.o.cmdheight = 2
vim.o.autoread = true
vim.bo.autoread = true
vim.wo.wrap = true
vim.o.whichwrap = "<,>,[,]"
vim.o.backup = false
vim.o.writebackup = false
vim.o.swapfile = false
vim.o.list = true
vim.o.listchars = "space:."
vim.o.wildmenu = true
