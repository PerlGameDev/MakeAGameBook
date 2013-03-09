all: book.pdf book.tex book.epub

book.pdf:
	pandoc book.markdown -o book.pdf

book.tex:
	pandoc book.markdown -o book.tex

book.epub:
	pandoc book.markdown -o book.epub

clean:
	rm book.pdf book.tex book.epub
