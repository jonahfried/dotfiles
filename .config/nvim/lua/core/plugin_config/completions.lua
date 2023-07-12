local cmp = require("cmp")

require("luasnip.loaders.from_vscode").lazy_load()

cmp.setup({
	mapping = cmp.mapping.preset.insert({
		["<C-b>"] = cmp.mapping.scroll_docs(-4),
		["<C-f>"] = cmp.mapping.scroll_docs(4),
		["<C-o>"] = cmp.mapping.complete(),
		["<C-e>"] = cmp.mapping.abort(),
		["<tab>"] = cmp.mapping.confirm({ select = true }),
	}),

	snippet = {
		expand = function(args)
			require("luasnip").lsp_expand(args.body)
		end,
	},

	sources = cmp.config.sources({
		{ name = "nvim_lsp" },
		{ name = "luasnip" },
	}, {
		{ name = "buffer" },
	}),
})

vim.keymap.set("i", "<c-j>", '<cmd>lua require"luasnip".jump(1)<CR>', { noremap = true })
vim.keymap.set("s", "<c-j>", '<cmd>lua require"luasnip".jump(1)<CR>', { noremap = true })
vim.keymap.set("i", "<c-k>", '<cmd>lua require"luasnip".jump(-1)<CR>', { noremap = true })
vim.keymap.set("s", "<c-k>", '<cmd>lua require"luasnip".jump(-1)<CR>', { noremap = true })
