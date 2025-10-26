
 -- CONFIG --
 
vim.wo.number = true
vim.wo.relativenumber = true

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.clipboard = "unnamedplus"

vim.opt.shiftwidth = 4
vim.opt.tabstop = 4

vim.opt.termguicolors = true

vim.o.swapfile = false


 -- DIAGNOSTIC --
 
 vim.diagnostic.config({
    virtual_text = {
      prefix = '●',
      spacing = 2,
	  severity = vim.diagnostic.severity.ERROR
    },
    signs = true,
    underline = true,
    update_in_insert = false,
    severity_sort = true,
  })


 -- MAPPINGS -- 
 
 vim.g.mapleader = " " 

    -- just
 vim.keymap.set('n', '<leader>l', ':Lazy<CR>')
 vim.keymap.set('n', '<leader>m', ':Mason<CR>')
 vim.keymap.set('n', '<leader>e', ':Neotree<CR>')
 vim.keymap.set('n', '<C-a>', 'ggVG', { noremap = true })

    -- split nav
 vim.keymap.set('n', '<c-h>', ':wincmd h<CR>')
 vim.keymap.set('n', '<c-Left>', ':wincmd h<CR>')
 
 vim.keymap.set('n', '<c-j>', ':wincmd j<CR>')
 vim.keymap.set('n', '<c-Down>', ':wincmd j<CR>')
 
 vim.keymap.set('n', '<c-k>', ':wincmd k<CR>')
 vim.keymap.set('n', '<c-Up>', ':wincmd k<CR>')
 
 vim.keymap.set('n', '<c-l>', ':wincmd l<CR>')
 vim.keymap.set('n', '<c-Right>', ':wincmd l<CR>')

	-- bufferline tabs nav

 vim.keymap.set('n', '<leader>a', ':BufferLineCyclePrev<CR>')
 vim.keymap.set('n', '<leader>d', ':BufferLineCycleNext<CR>')
 vim.keymap.set('n', '<leader>c', ':BufferLineCloseOthers<CR>')

    -- neotree
 vim.keymap.set('n', '<leader>e', ':Neotree toggle<CR>')
 vim.keymap.set('n', '<leader><CR>', ':Neotree reveal_force_cwd<CR>')

 vim.cmd("highlight NeoTreeDirectoryName ctermfg=1")
 vim.cmd("highlight NeoTreeDirectoryIcon ctermfg=1")
 
    -- format
 vim.keymap.set("n", "<leader>F", function()
   require("conform").format({
     lsp_fallback = true,
     async = false,
   })
 end, { desc = "Format file" })

 -- THEME

