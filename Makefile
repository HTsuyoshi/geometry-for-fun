main.pdf: main.tex ./contents/Exercise_001.tex
	latexmk -pdf $<

clean: 
	@rm *.toc *.aux *.log *.fls *.fdb_latexmk *.out ./contents/*.aux
