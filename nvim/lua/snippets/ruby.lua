local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

return {
  s({
    trig = "bye",
    priority = 1000  -- Higher priority than friendly-snippets
  }, {
    t('require "byebug"; byebug')
  }),
}