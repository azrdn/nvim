require "nvchad.options"

-- add yours here!
local autocmd = vim.api.nvim_create_autocmd

autocmd("VimEnter", {
  callback = function ()
    vim.cmd(":silent !kitten @ set-spacing padding=0")
    vim.cmd(":silent !kitten @ disable-ligatures never")
  end,
})

autocmd("VimLeavePre", {
  -- neovim/issues/21856
  callback = function ()
    vim.fn.jobstart('kitten @ set-spacing padding=8 margin=0', { detach = true })
    vim.fn.jobstart('kitten @ disable-ligatures always', { detach = true })
  end,
})

-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!
