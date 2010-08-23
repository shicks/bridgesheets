.PHONY:clean all

all:system.pdf basic.pdf competitive.pdf points.pdf sheets/sheets.pdf

clean:
	rm -f *.log *.aux *.dvi *~

%.dvi:%.tex
	latex $<
	latex $<
system.ps:system.dvi
	dvips -o $@ -t letter -t landscape $<
%.ps:%.dvi
	dvips -o $@ -t letter $<
%.pdf:%.ps
	ps2pdf $< $@

sheets/sheets.pdf:
	cd sheets; make sheets.pdf
