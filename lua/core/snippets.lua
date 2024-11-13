local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

ls.add_snippets("vue", {
	s("vue", {
		t({ "<template>", "  " }),
		i(1, "Your component here"),
		t({ "", "</template>", "", "<script>", "export default {", '  name: "YourComponent",', "};", "</script>" }),
	}),
})
