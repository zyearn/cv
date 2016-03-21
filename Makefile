all: zjs-en.pdf zjs-cn.pdf

resume.pdf: zjs-en.pdf
	cp $^ resume.pdf

zjs-cn.pdf: zjs-cn.tex
	xelatex $^

zjs-en.pdf: zjs-en.tex
	xelatex $^

clean:
	rm -rf *.pdf *.aux *.log *.bbl *.blg *.out

default: zjs-cn.pdf zjs-en.pdf

