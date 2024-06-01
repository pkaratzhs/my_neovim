vim.g.mapleader = '\x1f' --ctrl
vim.g.maplocalleader = '\x1f'

vim.api.nvim_set_keymap('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, noremap = true })
vim.api.nvim_set_keymap('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, noremap = true })

-- Reselect visual selection after indenting.
vim.api.nvim_set_keymap('v', '<', '<gv', { noremap = true })
vim.api.nvim_set_keymap('v', '>', '>gv', { noremap = true })

-- Maintain the cursor position when yanking a visual selection.
-- http://ddrscott.github.io/blog/2016/yank-without-jank/
vim.api.nvim_set_keymap('v', 'y', 'myy`y', { noremap = true })

-- Disable annoying command line typo.
vim.api.nvim_set_keymap('n', 'q:', ':q', { noremap = true })

-- Paste replace visual selection without copying it.
vim.api.nvim_set_keymap('v', 'p', '"_dP', { noremap = true })

-- Easy insertion of a trailing ; or , from insert mode.
vim.api.nvim_set_keymap('i', ';;', '<Esc>A;', { noremap = true })
vim.api.nvim_set_keymap('i', ',,', '<Esc>A,', { noremap = true })

-- Quickly clear search highlighting.
vim.api.nvim_set_keymap('n', '<Leader>k', ':nohlsearch<CR>', { noremap = true, silent = true })
