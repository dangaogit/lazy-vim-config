-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = LazyVim.safe_keymap_set

-- window resize
map("n", "<C-Up>", "<cmd>resize -2<cr>", { desc = "Increase Window Height" })
map("n", "<C-Down>", "<cmd>resize +2<cr>", { desc = "Decrease Window Height" })
map("n", "<C-Left>", "<cmd>vertical resize +2<cr>", { desc = "Decrease Window Width" })
map("n", "<C-Right>", "<cmd>vertical resize -2<cr>", { desc = "Increase Window Width" })

-- formatting
map({ "n", "v" }, "<leader>;", function()
    LazyVim.format({ force = true })
end, { desc = "Format" })

local opt = { noremap = true, silent = true }

-- lsp
-- local command_rename = '<cmd>lua vim.lsp.buf.rename()<CR>'
local command_rename = "<cmd>Lspsaga rename<CR>"
map("n", "<F2>", command_rename, opt)
map("n", "<F18>", command_rename, opt)
-- local command_code_action = '<cmd>lua vim.lsp.buf.code_action()<CR>'
local command_code_action = "<cmd>Lspsaga code_action<CR>"
map("n", "<M-.>", command_code_action, opt)
map("n", "≥", command_code_action, opt)
map("n", "<D-.>", command_code_action, opt)
local command_signature_help = "<cmd>lua vim.lsp.buf.signature_help()<CR>"
map("n", "<leader>.", command_signature_help, opt)
-- local command_definition = '<cmd>lua vim.lsp.buf.definition()<CR>'
local command_definition = "<cmd>Lspsaga preview_definition<CR>"
map("n", "<leader>b", command_definition, opt)
local command_type_definition = "<cmd>lua vim.lsp.buf.type_definition()<CR>"
map("n", "<leader>B", command_type_definition, opt)
local command_declaration = "<cmd>lua vim.lsp.buf.declaration()<CR>"
map("n", "<leader>I", command_declaration, opt)
local command_implementation = "<cmd>lua vim.lsp.buf.implementation()<CR>"
map("n", "<leader>i", command_implementation, opt)
-- local command_references = '<cmd>lua vim.lsp.buf.references()<CR>'
local command_references = "<cmd>Lspsaga finder<CR>"
map("n", "<leader>r", command_references, opt)
-- local command_hover = '<cmd>lua vim.lsp.buf.hover()<CR>'
local command_hover = ":<c-u>Lspsaga hover_doc<CR>"
map("n", "<leader>m", command_hover, opt)
-- 全局格式化快捷键
local command_format = "<cmd>lua vim.lsp.buf.format()<CR>"
map("n", "<leader>f", command_format, opt)
-- local command_open_float = '<cmd>lua vim.diagnostic.open_float()<CR>'
local command_open_float = "<cmd>Lspsaga show_line_diagnostics<CR>"
map("n", "<leader>p", command_open_float, opt)
-- local command_goto_prev = '<cmd>lua vim.diagnostic.goto_prev()<CR>'
local command_goto_prev = "<cmd>Lspsaga diagnostic_jump_prev<CR>"
map("n", "<C-A-h>", command_goto_prev, opt)
map("n", "<C-A-Left>", command_goto_prev, opt)
-- local command_goto_next = '<cmd>lua vim.diagnostic.goto_next()<CR>'
local command_goto_next = "<cmd>Lspsaga diagnostic_jump_next<CR>"
map("n", "<C-A-l>", command_goto_next, opt)
map("n", "<C-A-Right>", command_goto_next, opt)
