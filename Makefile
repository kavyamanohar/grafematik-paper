default: pdf
all: clean pdf html

pdf: main.pdf

html:
	latex2html -html_version 4.0,latin1,unicode main.tex

%.pdf: main.tex
	xelatex $<
	xelatex $< # to include generated ToC

clean:
	rm -f main.pdf main.aux main.toc main.log

