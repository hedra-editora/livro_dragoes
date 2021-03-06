all:
	pdflatex DRAGOES.tex
	evince DRAGOES.pdf

dub:
	pdflatex DRAGOES.tex
	pdflatex DRAGOES.tex
	evince DRAGOES.pdf

clean:
	rm *.aux *.log *.pdf *.toc

dic:
	@echo "personal_ws-1.1 pt_BR `cat *.tex | aspell -l pt_BR -t list | sort | uniq | wc -l` utf-8" > dic.pws
	@cat *.tex | aspell -l pt_BR -t list | sort | uniq >> dic.pws
	sh dic.sh

