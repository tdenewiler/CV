FTP_DIR=cv

all: pdf html html

pdf: cv.pdf

html: cv.html

%.pdf: %.tex
	xelatex -interaction=batchmode $<
	xelatex -interaction=batchmode $<

%.html: %.pdf
	pdf2htmlEX --zoom=2 $<
	echo '<a href="https://github.com/tdenewiler"><img style="position: absolute; top: 0; right: 0; border: 0;" src="https://s3.amazonaws.com/github/ribbons/forkme_right_orange_ff7600.png" alt="Fork me on GitHub"></a>' >> cv.html

upload:
	-ncftpput -f ~/.ncftp/cc.cfg $(FTP_DIR)/ *.pdf
	-ncftpput -f ~/.ncftp/cc.cfg $(FTP_DIR)/ *.tex *.sty

clean:
	rm -f *.aux *.log *.out
	rm -f *.pdf
