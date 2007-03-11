all:system.pdf basic.pdf competitive.pdf

%.dvi:%.tex
	latex $<
system.ps:system.dvi
	dvips -o $@ -t letter -t landscape $<
%.ps:%.dvi
	dvips -o $@ -t letter $<
%.pdf:%.ps
	ps2pdf $< $@
