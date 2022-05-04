require'lspconfig'.texlab.setup{
	settings = {
		texlab = {
			auxDirectory = ".tex",
			build = {
				args = { "-pdf", "-interaction=nonstopmode", "-synctex=1", "-outdir=.tex", "%f" },
				executable = "latexmk",
				forwardSearchAfter = false,
				onSave = true
			},
			chktex = {
				onEdit = true,
				onOpenAndSave = true
			},
			diagnosticsDelay = 300,
			forwardSearch = {
				args = {"%p"},
				executable = "zathura",
			},
			formatterLineLength = 80,
			bibtexFormatter = "latexindent",
			latexFormatter = "latexindent",
			latexindent = {
				modifyLineBreaks = true
			}
		}
	}
}
