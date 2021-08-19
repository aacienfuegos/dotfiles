autocmd BufNewFile *.py :call CheckPyFile()

function! CheckPyFile()
	normal!Iif __name__ == "__main__":
	normal!omain()
	normal!>>

	normal!ggOdef main():
	normal!o
	normal!ggoreturn
	normal!>>A
endfunction
