all: book.pdf book.tex book.epub

build/:
	mkdir build

book.pdf: build/
	pandoc book.markdown -o build/book.pdf

book.tex: build/
	pandoc book.markdown -o build/book.tex

book.epub: build/
	pandoc book.markdown -o build/book.epub

clean:
	rm build/*
