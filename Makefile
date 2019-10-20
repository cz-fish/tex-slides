TEX     = csplain
DVIPDF  = dvipdf

BASE    = content
THEME   = cross
BIN     = $(BASE).pdf
DVI     = $(BASE).dvi
TEMPLATE= themes/$(THEME).tex themes/common.tex pspdf.tex
IMAGES  = themes/vim.eps themes/vim_title.eps themes/vim_bw.eps themes/vim_title_bw.eps \
          themes/atoms.eps themes/atoms_title.eps themes/atoms_bw.eps themes/atoms_title_bw.eps \
	  themes/atoms_bul.eps themes/atoms_bbul.eps themes/atoms_bul_bw.eps \
          themes/cross.eps themes/cross_title.eps themes/cross_bw.eps themes/cross_title_bw.eps \
	  themes/cross_bul.eps themes/cross_bbul.eps

all: $(BIN)

clean:
	rm -f $(BIN) $(DVI) *.log

$(BIN): $(DVI)
	$(DVIPDF) $(DVI)

$(DVI): $(BASE).tex $(TEMPLATE) $(IMAGES)
	$(TEX) $<


