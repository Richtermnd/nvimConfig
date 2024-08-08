return {
	"L3MON4D3/LuaSnip",
	version = "v2.3",
	build = "make install_jsregexp",
  config = function ()
    local ls = require("luasnip")
    local s = ls.snippet
    local t = ls.text_node
    local i = ls.insert_node

    ls.add_snippets("go", {
      s("iferr", {
        t("if err != nil {"),
        t({"", "\treturn "}), i(1), t(", err"),
        t({"", "}"})
      }),
      s("fe", {
        t("fmt.Errorf(\"%s: %w\", op, err)")
      }),
      s("rfe", {
        t("return "), i(1), t(", fmt.Errorf(\"%s: %w\", op, err)")
      })
    })

  end
}
