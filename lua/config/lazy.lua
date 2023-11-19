local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.g.astronvim_first_install = true -- lets AstroNvim know that this is an initial installation
  -- stylua: ignore
  vim.fn.system({ "git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git", "--branch=stable", lazypath })
end
vim.opt.rtp:prepend(vim.env.LAZY or lazypath)

-- TODO: set to true on release
-- Whether or not to use stable releases of AstroNvim
local USE_STABLE = false

require("lazy").setup {
  spec = {
    -- TODO: remove branch v4 on release
    { "AstroNvim/AstroNvim", branch = "v4", version = USE_STABLE and "^4" or nil, import = "astronvim.plugins" },
    -- pin plugins to known working versions
    { import = "astronvim.lazy_snapshot", cond = USE_STABLE },
    -- AstroCommunity: import any community modules here
    -- TODO: Remove branch v4 on release
    -- { "AstroNvim/astrocommunity", branch = "v4" },
    -- { import = "astrocommunity.pack.lua" },
    -- import/override with your plugins
    { import = "plugins" },
    -- { import = "astrocommunity.editing-support.todo-comments-nvim", enabled = true },
    -- { import = "astrocommunity.lsp.inc-rename-nvim", enabled = true },
    -- { import = "astrocommunity.motion.flash-nvim" },
    -- { import = "astrocommunity.motion.mini-surround" },
    -- { import = "astrocommunity.motion.mini-move", enabled = true },
    -- { import = "astrocommunity.motion.mini-surround", enabled = true },
    -- { import = "astrocommunity.motion.mini-bracketed", enabled = true },
    -- { import = "astrocommunity.motion.mini-ai" },
    -- { import = "astrocommunity.motion.portal-nvim" },
    -- { import = "astrocommunity.editing-support.mini-splitjoin" },
    -- { import = "astrocommunity.indent.indent-blankline-nvim", enabled = true },
    -- { import = "astrocommunity.indent.mini-indentscope", enabled = true },
    -- { import = "astrocommunity.editing-support.rainbow-delimiters-nvim", enabled = true },
    -- { import = "astrocommunity.comment.mini-comment", enabled = true },
    -- { import = "astrocommunity.project.nvim-spectre", enabled = true },
    -- { import = "astrocommunity.diagnostics.trouble-nvim", enabled = true },
    -- -- { import = "astrocommunity.code-runner.sniprun", enabled = true },
    -- -- { import = "astrocommunity.editing-support.dial-nvim", enabled = true },
    -- { import = "astrocommunity.comment.mini-comment" },
    -- { import = "astrocommunity.editing-support.rainbow-delimiters-nvim" },
    -- -- { import = "astrocommunity.utility.noice-nvim" },
    -- { import = "astrocommunity.editing-support.todo-comments-nvim" },
    -- -- { import = "astrocommunity.editing-support.dial-nvim" },
    -- { import = "astrocommunity.scrolling.mini-animate" },
    -- { import = "astrocommunity.indent.mini-indentscope" },
    -- { import = "astrocommunity.fuzzy-finder.telescope-zoxide" },
    -- { import = "astrocommunity.git.neogit" },
    -- -- { import = "astrocommunity.media.vim-wakatime" },
    -- { import = "astrocommunity.motion.mini-ai", enabled = true },
    -- { import = "astrocommunity.motion.portal-nvim", enabled = true },
    -- { import = "astrocommunity.editing-support.mini-splitjoin", enabled = true },
    -- { import = "astrocommunity.project.nvim-spectre" },
  },
  install = { colorscheme = { "astrodark", "habamax", "embark" } },
  performance = {
    rtp = {
      -- disable some rtp plugins, add more to your liking
      disabled_plugins = {
        "gzip",
        "netrwPlugin",
        "tarPlugin",
        "tohtml",
        "zipPlugin",
      },
    },
  },
}
