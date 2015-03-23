all: zjs-en.pdf

resume.pdf: zjs-en.pdf
	cp $^ resume.pdf

zjs-cn.pdf: zjs-cn.tex
	xelatex $^

zjs-en.pdf: zjs-en.tex
	xelatex $^

clean:
	rm -rf *.pdf

default: zjs-cn.pdf zjs-en.pdf

