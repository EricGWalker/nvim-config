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



-- Global Config (preloaded before lazy)
require('config.globals')
-- Global Config (preloaded before lazy)



-- Lazy Config 
local opts = {
	defaults = {
		lazy = true,
	},
	install = {
		colorscheme = {'nightfox'}
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



-- Lazy Plugin Pointer
require("lazy").setup('plugins')
-- Lazy Plugin Pointer
