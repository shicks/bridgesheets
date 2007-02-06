all:system.pdf

%.dvi:%.tex
	latex $<
%.ps:%.dvi
	dvips -o $@ -t letter -t landscape $<
%.pdf:%.ps
	ps2pdf $< $@
