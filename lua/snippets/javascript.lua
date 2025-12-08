local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local rep = require("luasnip.extras").rep
local fmt = require("luasnip.extras.fmt").fmt

return {

  -- console.log
  s("cl", fmt("console.log({});", { i(1) })),

  -- console.log with label
  s("cll", fmt('console.log("{}:", {});', { i(1, "label"), i(2, "value") })),

  -- arrow function
  s(
    "fn",
    fmt("const {} = ({}) => {{\n  {}\n}};", {
      i(1, "name"),
      i(2),
      i(3, "body"),
    })
  ),

  -- async arrow function
  s(
    "afn",
    fmt("const {} = async ({}) => {{\n  {}\n}};", {
      i(1, "name"),
      i(2),
      i(3, "body"),
    })
  ),

  -- for loop
  s(
    "for",
    fmt(
      [[
    for (let {} = 0; {} < {}; {}++) {{
      {}
    }}
  ]],
      {
        i(1, "i"),
        t("i"),
        i(2, "arr.length"),
        t("i"),
        i(3, "// code"),
      }
    )
  ),

  -- for...of
  s(
    "fof",
    fmt(
      [[
    for (const {} of {}) {{
      {}
    }}
  ]],
      { i(1, "item"), i(2, "array"), i(3) }
    )
  ),

  -- import module
  s("im", fmt('import {} from "{}";', { i(1, "module"), i(2, "package") })),

  -- import multiple
  s(
    "imm",
    fmt('import {{ {} }} from "{}";', {
      i(1, "thing"),
      i(2, "package"),
    })
  ),

  -- export default
  s("exd", fmt("export default {};", { i(1, "value") })),

  -- try/catch
  s(
    "tc",
    fmt(
      [[
    try {{
      {}
    }} catch (error) {{
      console.error(error);
    }}
  ]],
      { i(1, "// code") }
    )
  ),

  -- promise then/catch
  s(
    "thn",
    fmt(
      [[
    {}.then(({}) => {{
      {}
    }}).catch((error) => {{
      console.error(error)
    }});
  ]],
      {
        i(1, "promise"),
        i(2, "res"),
        i(3, "// success"),
      }
    )
  ),

  -- fetch wrapper
  s(
    "fetch",
    fmt(
      [[
    const {} = async () => {{
      const res = await fetch("{}");
      const data = await res.json();
      return data;
    }}
  ]],
      { i(1, "getData"), i(2, "https://api.example.com") }
    )
  ),
}
