---@type LazySpec
return {
  -- Add community imports to the `lua/config/lazy.lua` file in your Neovim configuration folder (typically ~/.config/nvim)
  -- this guarantees that the community plugin specs are loaded before the user configuration

  -- This is a good place to do further customize the options set by the community plugins/packs
  -- NOTICE: uncommenting below assumes you have the catppuccin AstroCommunity plugin imported in `lua/config/lazy.lua`
  "AstroNvim/astrocommunity",
  -- example of importing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity
  { import = "astrocommunity.pack.cpp", enabled = true },
  -- { import = "astrocommunity.pack.python", enabled = true },

  { import = "astrocommunity.colorscheme.catppuccin" },
  { import = "astrocommunity.colorscheme.everforest" },

  { import = "astrocommunity.motion.portal-nvim" },
  { import = "astrocommunity.motion.portal-nvim", enabled = true },
  -- { import = "astrocommunity.motion.leap-nvim" }, -- decent search plugin. alternate for flash
  { import = "astrocommunity.motion.flash-nvim" }, -- fancy search. might cause problem with nonexistent search string.

  { import = "astrocommunity.note-taking.neorg", enabled = true },


  { import = "astrocommunity.debugging.nvim-dap-virtual-text" },
  { import = "astrocommunity.debugging.telescope-dap-nvim" },
  -- { import = "astrocommunity.debugging.persistent-breakpoints-nvim" }, -- Unsure how helpful this is.

  { import = "astrocommunity.editing-support.todo-comments-nvim", enabled = true },

  { import = "astrocommunity.diagnostics.trouble-nvim", enabled = true },

  { import = "astrocommunity.fuzzy-finder.telescope-zoxide" },

  { import = "astrocommunity.completion.cmp-cmdline", enabled = true },

  { import = "astrocommunity.lsp.inc-rename-nvim", enabled = true },
  { import = "astrocommunity.lsp.lsp-inlayhints-nvim", enabled = true },
  { import = "astrocommunity.lsp.lsp-signature-nvim", enabled = true },

  -- { import = "astrocommunity.completion.copilot-lua-cmp" },
    -- { import = "astrocommunity.motion.mini-surround" },
    -- { import = "astrocommunity.motion.mini-move", enabled = true },
    -- { import = "astrocommunity.motion.mini-surround", enabled = true },
    -- { import = "astrocommunity.motion.mini-bracketed", enabled = true },
    -- { import = "astrocommunity.motion.mini-ai" },
    -- { import = "astrocommunity.indent.indent-blankline-nvim", enabled = true },
    -- { import = "astrocommunity.indent.mini-indentscope", enabled = true },
    -- { import = "astrocommunity.editing-support.mini-splitjoin" },
    -- { import = "astrocommunity.editing-support.rainbow-delimiters-nvim", enabled = true },
    -- -- { import = "astrocommunity.editing-support.dial-nvim", enabled = true },
    -- { import = "astrocommunity.editing-support.rainbow-delimiters-nvim" },
    -- { import = "astrocommunity.editing-support.todo-comments-nvim" },
    -- -- { import = "astrocommunity.editing-support.dial-nvim" },
    -- { import = "astrocommunity.editing-support.mini-splitjoin", enabled = true },
  --
    -- { import = "astrocommunity.comment.mini-comment", enabled = true },
    -- { import = "astrocommunity.project.nvim-spectre", enabled = true },
    -- -- { import = "astrocommunity.code-runner.sniprun", enabled = true },
    -- { import = "astrocommunity.comment.mini-comment" },
    -- -- { import = "astrocommunity.utility.noice-nvim" },
    -- { import = "astrocommunity.scrolling.mini-animate" },
    -- { import = "astrocommunity.indent.mini-indentscope" },
    -- { import = "astrocommunity.git.neogit" },
    -- -- { import = "astrocommunity.media.vim-wakatime" },
    -- { import = "astrocommunity.motion.mini-ai", enabled = true },
    -- { import = "astrocommunity.project.nvim-spectre" },
  {
    "catppuccin",
    opts = {
      aerial = true,
      cmp = true,
      gitsigns = true,
      illuminate = true,
      markdown = true,
      mini = true,
      notify = true,
      neotree = true,
      nvimtree = true,
      telescope = true,
      treesitter = true,
      treesitter_context = true,
      ts_rainbow = true,
      which_key = true,
      -- dap = true,
      dap = {
        enabled = true,
        enable_ui = true, -- enable nvim-dap-ui
      },
    },
    native_lsp = {
      enabled = true,
      virtual_text = {
          errors = { "italic" },
          hints = { "italic" },
          warnings = { "italic" },
          information = { "italic" },
      },
      underlines = {
          errors = { "underline" },
          hints = { "underline" },
          warnings = { "underline" },
          information = { "underline" },
      },
    },
  }
}
