all: posa1.pdf

posa1.pdf: posa1.tex
	latexmk -pdf -pdflatex="pdflatex --shell-escape" -use-make posa1.tex
	latexmk -c

clean:
	latexmk -CA
	find __src/svg -name "*.pdf" -delete
	find __src/svg -name "*.pdf_tex" -delete

