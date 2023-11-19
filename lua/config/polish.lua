-- This file is automatically ran last in the setup process and is a good place to configure
-- augroups/autocommands and custom filetypes also this just pure lua so
-- anything that doesn't fit in the normal config locations above can go here

-- Set up custom filetypes
-- vim.filetype.add {
--   extension = {
--     foo = "fooscript",
--   },
--   filename = {
--     ["Foofile"] = "fooscript",
--   },
--   pattern = {
--     ["~/%.config/foo/.*"] = "fooscript",
--   },
-- }
-- load parameters for neovide
if vim.g.neovide then
  vim.g.neovide_transparency = 0.95
  vim.g.neovide_input_macos_alt_is_meta = true
  vim.cmd [[set guifont=MonoLisa,Symbols\ Nerd\ Font]]
  vim.g.neovide_cursor_vfx_mode = "railgun"
  vim.g.transparency = 0.95
end
-- Enable spell and wrap for markdown and gitcommit
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "gitcommit", "markdown" },
  callback = function()
    vim.opt_local.wrap = true
    vim.opt_local.spell = true
  end,
})
