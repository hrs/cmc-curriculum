base = cmc-curriculum

source = $(base).gv
pdf = $(base).pdf
png = $(base).png
svg = $(base).svg

all: pdf png svg

pdf: $(source)
	dot -Tpdf $(source) > $(pdf)

png: $(source)
	dot -Tpng $(source) > $(png)

svg: $(source)
	dot -Tsvg $(source) > $(svg)

clean:
	rm -f $(pdf) $(png) $(svg)
