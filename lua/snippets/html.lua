local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

return {
  -- Basic HTML5 boilerplate
  s("html5", {
    t({
      "<!DOCTYPE html>",
      '<html lang="en">',
      "<head>",
      '  <meta charset="UTF-8" />',
      '  <meta name="viewport" content="width=device-width, initial-scale=1.0" />',
      "  <title>",
    }),
    i(1, "Title"),
    t({
      "</title>",
      "</head>",
      "<body>",
      "  ",
    }),
    i(2, "<!-- content -->"),
    t({
      "",
      "</body>",
      "</html>",
    }),
  }),

  -- Div with class
  s("divc", {
    t('<div class="'),
    i(1, "class"),
    t('">'),
    i(2),
    t("</div>"),
  }),

  -- Script tag
  s("script", {
    t('<script src="'),
    i(1, "app.js"),
    t('"></script>'),
  }),

  -- Link stylesheet
  s("linkcss", {
    t('<link rel="stylesheet" href="'),
    i(1, "style.css"),
    t('" />'),
  }),
}
