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

  -- p tag
  s("p", {
    t("<p>"),
    i(1, "text"),
    t("</p>"),
  }),

  -- h1 tag
  s("h1", {
    t("<h1>"),
    i(1, "text"),
    t("</h1>"),
  }),

  -- a tag
  s("a", {
    t('<a href="'),
    i(1, "#"),
    t('">'),
    i(2, "link"),
    t("</a>"),
  }),

  -- img tag
  s("img", {
    t('<img src="'),
    i(1, "img"),
    t('" alt="'),
    i(2, "alt"),
    t('">'),
  }),

  -- form tag
  s("form", {
    t('<form action="'),
    i(1, "#"),
    t('" method="'),
    i(2, "get"),
    t('">'),
    i(3),
    t("</form>"),
  }),

  -- input tag
  s("inp", {
    t('<input type="'),
    i(1, "text"),
    t('" name="'),
    i(2, "name"),
    t('" value="'),
    i(3, ""),
    t('">'),
  }),

  -- button tag
  s("btn", {
    t('<button type="'),
    i(1, "submit"),
    t('">'),
    i(2, "button"),
    t("</button>"),
  }),
}
