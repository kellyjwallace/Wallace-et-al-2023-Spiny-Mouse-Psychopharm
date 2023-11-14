* Encoding: UTF-8.

DATASET ACTIVATE DataSet1.


DATASET ACTIVATE DataSet1.
UNIANOVA ssexp_stimulus_prop BY highlow_ls
  /METHOD=SSTYPE(3)
  /INTERCEPT=INCLUDE
  /CRITERIA=ALPHA(0.05)
  /DESIGN=highlow_ls.


DATASET ACTIVATE DataSet1.
* Chart Builder.
GGRAPH
  /GRAPHDATASET NAME="graphdataset" VARIABLES=highlow_ls ssexp_stimulus_prop MISSING=LISTWISE 
    REPORTMISSING=NO
  /GRAPHSPEC SOURCE=INLINE.
BEGIN GPL
  DATA: id=col(source(s), name("$CASENUM"), unit.category())
  GUIDE: axis(dim(1), label("highlow_ls"))
  GUIDE: axis(dim(2), label("ssexp_stimulus_prop"))
  GUIDE: text.title(label("Simple Boxplot of ssexp_stimulus_prop by highlow_ls"))
  SCALE: linear(dim(2), include(0))
  ELEMENT: schema(position(bin.quantile.letter(highlow_ls*ssexp_stimulus_prop)), label(id))
 ELEMENT: point.dodge.symmetric(position(highlow_ls*ssexp_stimulus_prop))
END GPL.
