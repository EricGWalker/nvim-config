-- Lazy Vim Installation
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)
-- Lazy Vim Installation


vim.g.mapleader = " " -- Make sure to set `mapleader` before lazy so your mappings are correct
vim.g.maplocalleader = " "


require('config.options')
local plugins = 'plugins'

-- Lazy Config 
local opts = {
	defaults = {
		lazy = true,
	},
	install = {
		colorscheme = {'carbonfox'}
	},
	rtp = {
		disabled_plugins = {
			"gzip",
			"matchparen",
			"netrwPlugin",
			"tarPlugin",
			"tohtml",
			"tutor",
			"zipPlugin",
		}
	},
	change_detection = {
		notify = true,
	},
}
-- Lazy Config 



require('lazy').setup('plugins', opts)
