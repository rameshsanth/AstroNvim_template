if true then return {} end -- REMOVE THIS LINE TO ACTIVATE THIS FILE

-- Example customization of Treesitter
-- return {
--   "nvim-treesitter/nvim-treesitter",
--   dependencies = {
--     { "nvim-treesitter/nvim-treesitter-context", config = true },
--   },
--   opts = {
--     incremental_selection = {
--       enable = true,
--       keymaps = {
--         init_selection = "<C-space>",
--         node_incremental = "<C-space>",
--         scope_incremental = "<nop>",
--         node_decremental = "<bs>",
--       },
--     },
--     auto_install = vim.fn.executable "tree-sitter" == 1,
--     highlight = { disable = { "help", "latex" } },
--     indent = { enable = true },
--   },
-- }
return {
  "nvim-treesitter/nvim-treesitter",
  opts = function(_, opts)
    -- add more things to the ensure_installed table protecting against community packs modifying it
    opts.ensure_installed = require("astrocore").list_insert_unique(opts.ensure_installed, {
      "lua", "cpp", "c", "bash", "vim"
    })
  end,
}
