# default: acm template -> generate main_acm.pdf
# make [ acm | acmj | ieee | ieeej ]

default: acm

all: acm acmj ieee ieeej usenix ndss

acm:
	latexmk -pdf main_$@

acmj:
	latexmk -pdf main_$@

ieee:
	latexmk -pdf main_$@

ieeej:
	latexmk -pdf main_$@

usenix:
	latexmk -pdf main_$@

ndss:
	latexmk -pdf main_$@

clean:
	rm -f *.aux *.bbl *.blg *.log *.pdf *.out *.fdb_latexmk *.fls
