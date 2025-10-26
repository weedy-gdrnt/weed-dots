--                           __
--   _      _____  ___  ____/ /
--  | | /| / / _ \/ _ \/ __  / 
--  | |/ |/ /  __/  __/ /_/ /  
--  |__/|__/\___/\___/\__,_/
-- 				nvim dotfiles

-- !!TIP!! before using my nvim config check that all language servers, linters etc. installed, for this
-- use mason (space+a) and check YOURNVIMCONFIGDIRECTORY/lua/plugs/lspc.lua (~/.config/nvim/ by default)
-- (npm required by mason)

-- core 
require("core.bootstrap") 	-- connect lazy 			~ https://lazy.folke.io/installation
require("core.plugs")		-- plugins install  		~ https://lazy.folke.io/installation
require("core.conf")		-- config, mappings		 	~ u can check nvim site, https://neovim.io/
require("core.colorscheme")	-- colorscheme				~ https://github.com/ellisonleao/gruvbox.nvim in use

-- plugins setups
require("plugs.setup")		-- file for plugins, which are setuped in one line
require("plugs.ntree")		-- neotree, fast explorer plug 			~ https://github.com/nvim-neo-tree/neo-tree.nvim
require("plugs.lspc")		-- lsp config plug 						~ https://github.com/neovim/nvim-lspconfig			
require("plugs.tsitter")	-- treesitter plug, better highlight	~ https://github.com/nvim-treesitter/nvim-treesitter
require("plugs.cmp")		-- cmp, autocomplete plug				~ https://github.com/hrsh7th/nvim-cmp
require("plugs.lline")		-- lualine plug, bar in bottm of screen ~ https://github.com/nvim-lualine/lualine.nvim
require("plugs.tscope")		-- telescope plug, live grep n other	~ https://github.com/nvim-telescope/telescope.nvim
require("plugs.conform")	-- formatter plug						~ https://github.com/stevearc/conform.nvim

 -- to toggle neotree use 	space+e
 -- to open mason use 		space+m
 --	to open lazy use 		space+l
 --
 --	to format use 			space+shift+f
 --
 --	to treesitter live grep 
 --	use 					space+f+b
 -- tip: check treesitter 
 -- config
 --
 -- to navigate with splits
 -- use						ctrl+arrow up/right/down/left
 --
 -- to select all use 		ctrl+a
 --
 -- to navigate with tabs (
 -- buffers) use 			space+a/d
 --	
 --	to close all tabs exclu
 --	de current use			space+c
 -- 

