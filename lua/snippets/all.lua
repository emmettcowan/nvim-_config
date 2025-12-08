local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local fmt = require("luasnip.extras.fmt").fmt

return {
  -- Simple snippet
  s("date", t(os.date("%Y-%m-%d"))),

  -- Template snippet using fmt
  s("todo", fmt("TODO: {}", { i(1, "write something") })),

  -- Multi-line snippet
  s(
    "hdr",
    fmt(
      [[
    ============================
    {} 
    ============================
  ]],
      {
        i(1, "Header"),
      }
    )
  ),
}
