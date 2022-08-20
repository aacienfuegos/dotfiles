require 'lspconfig'.texlab.setup {
	filetypes = { "tex", "bib", "plaintex" },
	settings = {
		texlab = {
			auxDirectory = ".tex",
			build = {
				args = { "-pdf", "-interaction=nonstopmode", "-synctex=1", "-shell-escape", "-outdir=.tex", "%f" },
				executable = "latexmk",
				forwardSearchAfter = false,
				onSave = false
				-- onSave = true
			},
			chktex = {
				onEdit = false,
				onOpenAndSave = false
				-- onEdit = true,
				-- onOpenAndSave = true
			},
			diagnosticsDelay = 300,
			forwardSearch = {
				args = { "%p" },
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
