all: clean emfs.pdf

run: emfs.pdf
	mupdf emfs.pdf &

emfs.pdf:
	pdflatex emfs && \
	bibtex emfs && \
	pdflatex emfs && \
	pdflatex emfs

clean:
	rm -rf emfs.pdf
	rm -rf emfs.aux

.PHONY: all clean
