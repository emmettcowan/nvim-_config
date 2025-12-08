return {
  {
    "L3MON4D3/LuaSnip",
    config = function()
      local ls = require("luasnip")

      -- load VSCode-style snippets
      require("luasnip.loaders.from_vscode").lazy_load()

      -- load Lua snippets
      require("luasnip.loaders.from_lua").lazy_load({
        paths = vim.fn.stdpath("config") .. "/lua/snippets",
      })

      -- your custom settings
      ls.config.set_config({
        history = true,
        updateevents = "TextChanged,TextChangedI",
      })
    end,
  },
}
