# default: acm template -> generate main_acm.pdf
# make TARGET=(acm|acmj|ieee|ieeej|usenix|ndss)

TARGET	?= acm
ALL	= acm acmj ieee ieeej usenix ndss

default:
	make main_$(TARGET)

all:
	@for a in $(ALL); do make TARGET=$$a; done

main_%:
	latexmk -pdf $@

clean:
	latexmk -C main_$(TARGET)
	rm -f *.aux *.bbl *.blg *.log *.pdf *.out *.fdb_latexmk *.fls

cleanall:
	@for a in $(ALL); do make clean TARGET=$$a; done

