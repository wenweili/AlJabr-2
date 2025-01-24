MAINFILE=Al-jabr-2
TEMPLATE=Template-AJbook
ERRATA=Errata-Al-jabr-2
LATEXMK=latexmk

default:
	# Generating $(MAINFILE).pdf
	$(LATEXMK) -pdf -pdflatex="xelatex -synctex=1 -shell-escape -interaction=nonstopmode %O %S" $(MAINFILE)

nosync:
	# Generating $(MAINFILE).pdf
	$(LATEXMK) -pdf -pdflatex="xelatex -shell-escape -interaction=nonstopmode %O %S" $(MAINFILE)
	
	

template:
	# Generating $(TEMPLATE).pdf
	$(LATEXMK) -pdf -pdflatex="xelatex -shell-escape -interaction=nonstopmode %O %S" $(TEMPLATE)

errata:
	# Generating $(ERRATA).pdf
	$(LATEXMK) -pdf -pdflatex="xelatex -shell-escape -interaction=nonstopmode %O %S" $(ERRATA)

clean:
	# Cleaning...
	@rm -f *.aux *.log *.idx *.ind *.ilg *.thm *.toc *.blg *.bbl *.bcf *.out
	@rm -f *.fls *.fdb_latexmk *.run.xml *.synctex.gz *.xdv *~ *.lof *.lot
	@rm -f .metadonnees*


tarball:
	@rm -f ../AlJabr-2.tar.gz
	@tar cvfzh ../AlJabr-2.tar.gz .

zip:
	@rm -f ../AlJabr-2.zip
	@zip -r ../AlJabr-2.zip .

.PHONY: clean
