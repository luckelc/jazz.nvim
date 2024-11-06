-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- TIP: Disable arrow keys in normal mode
-- vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
-- vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
-- vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
-- vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('lucke-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- Automatically runs the Oil command if a directory opens or opens a file regularly
vim.api.nvim_create_user_command('Startup', function()
  -- Get the first argument if provided
  local arg = vim.fn.argv(0)

  if arg == '' then
    -- If no argument, check if the current working directory is set as the buffer
    if vim.fn.isdirectory(vim.fn.getcwd()) == 1 then
      -- If we are in a directory, execute the directory-specific command
      vim.cmd 'Oil' -- Example action for directories
    else
      -- Otherwise, we are in an empty buffer
      vim.cmd "echo 'No file or directory specified, starting in an empty buffer'"
    end
  elseif vim.fn.isdirectory(arg) == 1 then
    -- If the argument is a directory
    vim.cmd 'Oil' -- Example action for directories
  else
    -- If the argument is a file
  end
end, {})

vim.api.nvim_set_keymap('n', '<leader>gg', ':Copilot<CR>', { noremap = true, silent = true, desc = 'Use copilot' })

vim.api.nvim_set_keymap('n', '-', ':Oil<CR>', { noremap = true, silent = true, desc = 'Open oil' })

vim.api.nvim_set_keymap('n', '<leader>e', ':Neotree toggle<CR>', { noremap = true, silent = true, desc = 'Open File Manager' })

-- Keybinding to open Lazy Manager
vim.api.nvim_set_keymap('n', '<leader>l', ':Lazy<CR>', { noremap = true, silent = true, desc = 'Open Lazy:plugin manager' })

-- Keybinding to open Lazy Manager
vim.api.nvim_set_keymap('n', '<leader>cm', ':Mason<CR>', { noremap = true, silent = true, desc = 'Open Mason' })

vim.api.nvim_set_keymap('n', '<leader>p', ':Telescope colorscheme<CR>', { noremap = true, silent = true, desc = 'Change theme' })

-- vim: ts=2 sts=2 sw=2 et
