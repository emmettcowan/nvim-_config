-- ~/.config/nvim/lua/user/icons.lua
local status_ok, devicons = pcall(require, "nvim-web-devicons")
if not status_ok then
  return
end

-- Setup default icons (optional, but recommended)
devicons.setup({
  default = true,
})

-- Add custom icon for Nunjucks files
devicons.set_icon({
  njk = {
    icon = "", -- pick any Nerd Font glyph you like
    color = "#FF5C8F", -- color for the icon
    name = "Nunjucks",
  },
})
