main.pdf: main.tex ./contents/*
	latexmk -pdf $<

clean: 
	rm *.{aux,log,fls,toc,fdb_latexmk,out} ./contents/*.aux
