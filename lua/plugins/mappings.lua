-- AstroCore provides a central place to modify mappings set up as well as which-key menu titles
-- local tabpre = "<leader><tab>"
-- AstroCore provides a central place to modify mappings set up as well as which-key menu titles
---@type LazySpec
return {
  "AstroNvim/astrocore",
  ---@type AstroCoreOpts
  opts = {
    mappings = {
      -- first key is the mode
      n = {
        -- second key is the lefthand side of the map

        -- navigate buffer tabs with `H` and `L`
        -- L = {
        --   function() require("astrocore.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end,
        --   desc = "Next buffer",
        -- },
        -- H = {
        --   function() require("astrocore.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
        --   desc = "Previous buffer",
        -- },

        -- mappings seen under group name "Buffer"
        ["<Leader>bD"] = {
          function()
            require("astroui.status.heirline").buffer_picker(
              function(bufnr) require("astrocore.buffer").close(bufnr) end
            )
          end,
          desc = "Pick to close",
        },
        -- tables with just a `desc` key will be registered with which-key if it's installed
        -- this is useful for naming menus
        ["<Leader>b"] = { desc = "Buffers" },
        -- quick save
        -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
      },
      t = {
        -- setting a mapping to false will disable it
        -- ["<esc>"] = false,
      },
    },
  },
}
--return {
--  "AstroNvim/astrocore",
--  ---@type AstroCoreOpts
--  opts = {
--    mappings = {
--      n = {
--        ["<leader>o"] = false, -- focus neo-tree
--        ["q:"] = ":",

--        ["<leader>n"] = { "<cmd>enew<cr>", desc = "New File" },
--        ["<leader>N"] = { "<cmd>tabnew<cr>", desc = "New Tab" },
--        ["<leader>."] = { "<cmd>cd %:p:h<cr>", desc = "Set CWD" },
--        -- tabs
--        [tabpre] = { desc = "󰓩 Tab Managment" },
--        [tabpre .. "l"] = { "<cmd>tablast<cr>", desc = "Last Tab" },
--        [tabpre .. "f"] = { "<cmd>tabfirst<cr>", desc = "First Tab" },
--        [tabpre .. "<tab>"] = { "<cmd>tabnew<cr>", desc = "New Tab" },
--        [tabpre .. "]"] = { "<cmd>tabnext<cr>", desc = "Next Tab" },
--        [tabpre .. "["] = { "<cmd>tabprevious<cr>", desc = "Previous Tab" },
--        -- Copy/paste with system clipboard
--        ["gy"] = { '"+y', desc = "Copy to system clipboard" },
--        ["gp"] = { '"+p', desc = "Paste from system clipboard" },
--        ["gP"] = { '"+P', desc = "Paste from system clipboard" },
--      },
--      i = {
--        -- Move with alt in insert, terminal and command
--        -- Don't `noremap` in insert mode to have these keybindings behave exactly
--        -- like arrows (crucial inside TelescopePrompt)
--        ["<M-h>"] = { "<Left>", noremap = false, desc = "Left" },
--        ["<M-j>"] = { "<Down>", noremap = false, desc = "Down" },
--        ["<M-k>"] = { "<Up>", noremap = false, desc = "Up" },
--        ["<M-l>"] = { "<Right>", noremap = false, desc = "Right" },
--      },
--      v = {

--        -- Search inside visually highlighted text. Use `silent = false` for it to
--        -- make effect immediately.
--        ["g/"] = { "<esc>/\\%V", silent = false, desc = "Search inside visual selection" },
--        ["gV"] = { '"`[" . strpart(getregtype(), 0, 1) . "`]"', expr = true, desc = "Visually select changed text" },
--        ["gy"] = { '"+y', desc = "Copy to system clipboard" },
--        ["gp"] = { '"+p', desc = "Paste from system clipboard" },
--        ["gP"] = { '"+P', desc = "Paste from system clipboard" },
--        -- Search visually selected text (slightly better than builtins in Neovim>=0.8)
--        ["*"] = { [[y/\V<C-R>=escape(@", '/\')<CR><CR>]] },
--        ["#"] = { [[y?\V<C-R>=escape(@", '?\')<CR><CR>]] },
--      },
--      t = {
--        ["<M-h>"] = { "<Left>", desc = "Left" },
--        ["<M-j>"] = { "<Down>", desc = "Down" },
--        ["<M-k>"] = { "<Up>", desc = "Up" },
--        ["<M-l>"] = { "<Right>", desc = "Right" },
--      },
--      c = {
--        ["<M-h>"] = { "<Left>", silent = false, desc = "Left" },
--        ["<M-l>"] = { "<Right>", silent = false, desc = "Right" },
--      },
--    },
--  },
--}
