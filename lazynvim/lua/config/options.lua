-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.diagnostic.config({ update_in_insert = true })

local opt = vim.opt

opt.cursorline = false

vim.cmd("let g:vimwiki_list = [{'path': '~/Git/notes', 'syntax': 'markdown', 'ext': '.md'}]")
