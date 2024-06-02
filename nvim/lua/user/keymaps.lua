-- Space is my leader.
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- When text is wrapped, move by terminal rows, not lines, unless a count is provided.
vim.api.nvim_set_keymap('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true })
vim.api.nvim_set_keymap('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true })

-- Reselect visual selection after indenting.
vim.api.nvim_set_keymap('v', '<', '<gv', { noremap = true })
vim.api.nvim_set_keymap('v', '>', '>gv', { noremap = true })

-- Maintain the cursor position when yanking a visual selection.
vim.api.nvim_set_keymap('v', 'y', 'myy`y', { noremap = true })

-- Disable annoying command line typo.
vim.api.nvim_set_keymap('n', 'q:', ':q', { noremap = true })

-- Paste replace visual selection without copying it.
vim.api.nvim_set_keymap('v', 'p', '"_dP', { noremap = true })

-- Easy insertion of a trailing ; or , from insert mode.
vim.api.nvim_set_keymap('i', ';;', '<Esc>A;', { noremap = true })
vim.api.nvim_set_keymap('i', ',,', '<Esc>A,', { noremap = true })

-- Quickly clear search highlighting.
vim.api.nvim_set_keymap('n', '<Leader>k', ':nohlsearch<CR>', { noremap = true })

-- Open the current file in the default program.
--vim.api.nvim_set_keymap('n', '<Leader>x', ':!xdg-open %<CR><CR>', { noremap = true })

-- Move lines up and down.
vim.api.nvim_set_keymap('i', '<A-j>', '<Esc>:move .+1<CR>==gi', { noremap = true })
vim.api.nvim_set_keymap('i', '<A-k>', '<Esc>:move .-2<CR>==gi', { noremap = true })
vim.api.nvim_set_keymap('n', '<A-j>', ':move .+1<CR>==', { noremap = true })
vim.api.nvim_set_keymap('n', '<A-k>', ':move .-2<CR>==', { noremap = true })
vim.api.nvim_set_keymap('v', '<A-j>', ":move '>+1<CR>gv=gv", { noremap = true })
vim.api.nvim_set_keymap('v', '<A-k>', ":move '<-2<CR>gv=gv", { noremap = true })
