PAGES=openings.tex notrump.tex suitresponses.tex

.PHONY:all clean

all:sheets.pdf

clean:
	rm -f *.log *.aux *.dvi *~

bridge.sty:bridge.dtx bridge.ins	
	yes | latex bridge.ins

bridge.pdf:bridge.dtx
	pdflatex bridge.dtx

bridgesheet.cls:bridgesheet.dtx bridgesheet.ins
	yes | latex bridgesheet.ins

bridgesheet.pdf:bridgesheet.dtx
	pdflatex bridgesheet.dtx

sheets.pdf:bridgesheet.cls bridge.sty sheets.tex $(PAGES)
	pdflatex sheets.tex