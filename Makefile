FTP_DIR=cv

all: pdf html pdf html

pdf: cv.pdf

html: cv.html

%.pdf: %.tex
	#lualatex -interaction=batchmode $<
	#lualatex -interaction=batchmode $<
	#xelatex -interaction=batchmode $<
	#xelatex -interaction=batchmode $<
	pdflatex $<

%.html: %.pdf
	pdf2htmlEX --zoom=2 $<

upload:
	-ncftpput -f ~/.ncftp/cc.cfg $(FTP_DIR)/ *.pdf
	-ncftpput -f ~/.ncftp/cc.cfg $(FTP_DIR)/ *.tex *.sty

clean:
	rm -f *.aux *.log *.out
	rm -f *.pdf *.html
