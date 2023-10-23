* Encoding: UTF-8.

DATASET ACTIVATE DataSet1.

MIXED poa_fos BY sex treatment littersize
  /CRITERIA=DFMETHOD(SATTERTHWAITE) CIN(95) MXITER(100) MXSTEP(10) SCORING(1) 
    SINGULAR(0.000000000001) HCONVERGE(0.00000001, RELATIVE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0, 
    ABSOLUTE)
  /FIXED=sex treatment sex*treatment | SSTYPE(3)
  /METHOD=REML
  /RANDOM=littersize | COVTYPE(VC)
  /EMMEANS=TABLES(OVERALL)
  /EMMEANS=TABLES(sex) COMPARE ADJ(BONFERRONI)
  /EMMEANS=TABLES(treatment) COMPARE ADJ(BONFERRONI)
  /EMMEANS=TABLES(sex*treatment)
   /EMMEANS=TABLES(sex*treatment) compare(sex) ADJ(BONFERRONI)
   /EMMEANS=TABLES(sex*treatment) compare(treatment) ADJ(BONFERRONI) .

* Chart Builder.
GGRAPH
  /GRAPHDATASET NAME="graphdataset" VARIABLES=treatment poa_fos sex MISSING=LISTWISE 
    REPORTMISSING=NO
  /GRAPHSPEC SOURCE=INLINE.
BEGIN GPL
  SOURCE: s=userSource(id("graphdataset"))
  DATA: treatment=col(source(s), name("treatment"), unit.category())
  DATA: poa_fos=col(source(s), name("poa_fos"))
  DATA: sex=col(source(s), name("sex"), unit.category())
  DATA: id=col(source(s), name("$CASENUM"), unit.category())
  COORD: rect(dim(1,2), cluster(3,0))
  GUIDE: axis(dim(3), label("treatment"))
  GUIDE: axis(dim(2), label("poa_fos"))
  GUIDE: legend(aesthetic(aesthetic.color), label("sex"))
  GUIDE: text.title(label("Clustered Boxplot of poa_fos by treatment by sex"))
  SCALE: linear(dim(2), include(0))
  ELEMENT: schema(position(bin.quantile.letter(sex*poa_fos*treatment)), color(sex), label(id))
END GPL.

MIXED poa_perk BY sex treatment littersize
  /CRITERIA=DFMETHOD(SATTERTHWAITE) CIN(95) MXITER(100) MXSTEP(10) SCORING(1) 
    SINGULAR(0.000000000001) HCONVERGE(0.00000001, RELATIVE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0, 
    ABSOLUTE)
  /FIXED=sex treatment sex*treatment | SSTYPE(3)
  /METHOD=REML
  /RANDOM=littersize | COVTYPE(VC)
  /EMMEANS=TABLES(OVERALL)
  /EMMEANS=TABLES(sex) COMPARE ADJ(BONFERRONI)
  /EMMEANS=TABLES(treatment) COMPARE ADJ(BONFERRONI)
  /EMMEANS=TABLES(sex*treatment)
   /EMMEANS=TABLES(sex*treatment) compare(sex) ADJ(BONFERRONI)
   /EMMEANS=TABLES(sex*treatment) compare(treatment) ADJ(BONFERRONI) .

GGRAPH
  /GRAPHDATASET NAME="graphdataset" VARIABLES=treatment poa_perk sex MISSING=LISTWISE 
    REPORTMISSING=NO
  /GRAPHSPEC SOURCE=INLINE.
BEGIN GPL
  SOURCE: s=userSource(id("graphdataset"))
  DATA: treatment=col(source(s), name("treatment"), unit.category())
  DATA: poa_perk=col(source(s), name("poa_perk"))
  DATA: sex=col(source(s), name("sex"), unit.category())
  DATA: id=col(source(s), name("$CASENUM"), unit.category())
  COORD: rect(dim(1,2), cluster(3,0))
  GUIDE: axis(dim(3), label("treatment"))
  GUIDE: axis(dim(2), label("poa_perk"))
  GUIDE: legend(aesthetic(aesthetic.color), label("sex"))
  GUIDE: text.title(label("Clustered Boxplot of poa_perk by treatment by sex"))
  SCALE: linear(dim(2), include(0))
  ELEMENT: schema(position(bin.quantile.letter(sex*poa_perk*treatment)), color(sex), label(id))
END GPL.






MIXED pvn_fos BY sex treatment littersize
  /CRITERIA=DFMETHOD(SATTERTHWAITE) CIN(95) MXITER(100) MXSTEP(10) SCORING(1) 
    SINGULAR(0.000000000001) HCONVERGE(0.00000001, RELATIVE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0, 
    ABSOLUTE)
  /FIXED=sex treatment sex*treatment | SSTYPE(3)
  /METHOD=REML
  /RANDOM=littersize | COVTYPE(VC)
  /EMMEANS=TABLES(OVERALL)
  /EMMEANS=TABLES(sex) COMPARE ADJ(BONFERRONI)
  /EMMEANS=TABLES(treatment) COMPARE ADJ(BONFERRONI)
  /EMMEANS=TABLES(sex*treatment)
   /EMMEANS=TABLES(sex*treatment) compare(sex) ADJ(BONFERRONI)
   /EMMEANS=TABLES(sex*treatment) compare(treatment) ADJ(BONFERRONI) .

GGRAPH
  /GRAPHDATASET NAME="graphdataset" VARIABLES=treatment pvn_fos sex MISSING=LISTWISE 
    REPORTMISSING=NO
  /GRAPHSPEC SOURCE=INLINE.
BEGIN GPL
  SOURCE: s=userSource(id("graphdataset"))
  DATA: treatment=col(source(s), name("treatment"), unit.category())
  DATA: pvn_fos=col(source(s), name("pvn_fos"))
  DATA: sex=col(source(s), name("sex"), unit.category())
  DATA: id=col(source(s), name("$CASENUM"), unit.category())
  COORD: rect(dim(1,2), cluster(3,0))
  GUIDE: axis(dim(3), label("treatment"))
  GUIDE: axis(dim(2), label("pvn_fos"))
  GUIDE: legend(aesthetic(aesthetic.color), label("sex"))
  GUIDE: text.title(label("Clustered Boxplot of pvn_fos by treatment by sex"))
  SCALE: linear(dim(2), include(0))
  ELEMENT: schema(position(bin.quantile.letter(sex*pvn_fos*treatment)), color(sex), label(id))
END GPL.

MIXED pvn_perk BY sex treatment littersize
  /CRITERIA=DFMETHOD(SATTERTHWAITE) CIN(95) MXITER(100) MXSTEP(10) SCORING(1) 
    SINGULAR(0.000000000001) HCONVERGE(0.00000001, RELATIVE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0, 
    ABSOLUTE)
  /FIXED=sex treatment sex*treatment | SSTYPE(3)
  /METHOD=REML
  /RANDOM=littersize | COVTYPE(VC)
  /EMMEANS=TABLES(OVERALL)
  /EMMEANS=TABLES(sex) COMPARE ADJ(BONFERRONI)
  /EMMEANS=TABLES(treatment) COMPARE ADJ(BONFERRONI)
  /EMMEANS=TABLES(sex*treatment)
   /EMMEANS=TABLES(sex*treatment) compare(sex) ADJ(BONFERRONI)
   /EMMEANS=TABLES(sex*treatment) compare(treatment) ADJ(BONFERRONI) .

GGRAPH
  /GRAPHDATASET NAME="graphdataset" VARIABLES=treatment pvn_perk sex MISSING=LISTWISE 
    REPORTMISSING=NO
  /GRAPHSPEC SOURCE=INLINE.
BEGIN GPL
  SOURCE: s=userSource(id("graphdataset"))
  DATA: treatment=col(source(s), name("treatment"), unit.category())
  DATA: pvn_perk=col(source(s), name("pvn_perk"))
  DATA: sex=col(source(s), name("sex"), unit.category())
  DATA: id=col(source(s), name("$CASENUM"), unit.category())
  COORD: rect(dim(1,2), cluster(3,0))
  GUIDE: axis(dim(3), label("treatment"))
  GUIDE: axis(dim(2), label("pvn_perk"))
  GUIDE: legend(aesthetic(aesthetic.color), label("sex"))
  GUIDE: text.title(label("Clustered Boxplot of pvn_perk by treatment by sex"))
  SCALE: linear(dim(2), include(0))
  ELEMENT: schema(position(bin.quantile.letter(sex*pvn_perk*treatment)), color(sex), label(id))
END GPL.







MIXED ls_fos BY sex treatment littersize
  /CRITERIA=DFMETHOD(SATTERTHWAITE) CIN(95) MXITER(100) MXSTEP(10) SCORING(1) 
    SINGULAR(0.000000000001) HCONVERGE(0.00000001, RELATIVE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0, 
    ABSOLUTE)
  /FIXED=sex treatment sex*treatment | SSTYPE(3)
  /METHOD=REML
  /RANDOM=littersize | COVTYPE(VC)
  /EMMEANS=TABLES(OVERALL)
  /EMMEANS=TABLES(sex) COMPARE ADJ(BONFERRONI)
  /EMMEANS=TABLES(treatment) COMPARE ADJ(BONFERRONI)
  /EMMEANS=TABLES(sex*treatment)
   /EMMEANS=TABLES(sex*treatment) compare(sex) ADJ(BONFERRONI)
   /EMMEANS=TABLES(sex*treatment) compare(treatment) ADJ(BONFERRONI) .

GGRAPH
  /GRAPHDATASET NAME="graphdataset" VARIABLES=treatment ls_fos sex MISSING=LISTWISE 
    REPORTMISSING=NO
  /GRAPHSPEC SOURCE=INLINE.
BEGIN GPL
  SOURCE: s=userSource(id("graphdataset"))
  DATA: treatment=col(source(s), name("treatment"), unit.category())
  DATA: ls_fos=col(source(s), name("ls_fos"))
  DATA: sex=col(source(s), name("sex"), unit.category())
  DATA: id=col(source(s), name("$CASENUM"), unit.category())
  COORD: rect(dim(1,2), cluster(3,0))
  GUIDE: axis(dim(3), label("treatment"))
  GUIDE: axis(dim(2), label("ls_fos"))
  GUIDE: legend(aesthetic(aesthetic.color), label("sex"))
  GUIDE: text.title(label("Clustered Boxplot of ls_fos by treatment by sex"))
  SCALE: linear(dim(2), include(0))
  ELEMENT: schema(position(bin.quantile.letter(sex*ls_fos*treatment)), color(sex), label(id))
END GPL.

MIXED ls_perk BY sex treatment littersize
  /CRITERIA=DFMETHOD(SATTERTHWAITE) CIN(95) MXITER(100) MXSTEP(10) SCORING(1) 
    SINGULAR(0.000000000001) HCONVERGE(0.00000001, RELATIVE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0, 
    ABSOLUTE)
  /FIXED=sex treatment sex*treatment | SSTYPE(3)
  /METHOD=REML
  /RANDOM=littersize | COVTYPE(VC)
  /EMMEANS=TABLES(OVERALL)
  /EMMEANS=TABLES(sex) COMPARE ADJ(BONFERRONI)
  /EMMEANS=TABLES(treatment) COMPARE ADJ(BONFERRONI)
  /EMMEANS=TABLES(sex*treatment)
   /EMMEANS=TABLES(sex*treatment) compare(sex) ADJ(BONFERRONI)
   /EMMEANS=TABLES(sex*treatment) compare(treatment) ADJ(BONFERRONI) .

GGRAPH
  /GRAPHDATASET NAME="graphdataset" VARIABLES=treatment ls_perk sex MISSING=LISTWISE 
    REPORTMISSING=NO
  /GRAPHSPEC SOURCE=INLINE.
BEGIN GPL
  SOURCE: s=userSource(id("graphdataset"))
  DATA: treatment=col(source(s), name("treatment"), unit.category())
  DATA: ls_perk=col(source(s), name("ls_perk"))
  DATA: sex=col(source(s), name("sex"), unit.category())
  DATA: id=col(source(s), name("$CASENUM"), unit.category())
  COORD: rect(dim(1,2), cluster(3,0))
  GUIDE: axis(dim(3), label("treatment"))
  GUIDE: axis(dim(2), label("ls_perk"))
  GUIDE: legend(aesthetic(aesthetic.color), label("sex"))
  GUIDE: text.title(label("Clustered Boxplot of ls_perk by treatment by sex"))
  SCALE: linear(dim(2), include(0))
  ELEMENT: schema(position(bin.quantile.letter(sex*ls_perk*treatment)), color(sex), label(id))
END GPL.






MIXED ah_fos BY sex treatment littersize
  /CRITERIA=DFMETHOD(SATTERTHWAITE) CIN(95) MXITER(100) MXSTEP(10) SCORING(1) 
    SINGULAR(0.000000000001) HCONVERGE(0.00000001, RELATIVE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0, 
    ABSOLUTE)
  /FIXED=sex treatment sex*treatment | SSTYPE(3)
  /METHOD=REML
  /RANDOM=littersize | COVTYPE(VC)
  /EMMEANS=TABLES(OVERALL)
  /EMMEANS=TABLES(sex) COMPARE ADJ(BONFERRONI)
  /EMMEANS=TABLES(treatment) COMPARE ADJ(BONFERRONI)
  /EMMEANS=TABLES(sex*treatment)
   /EMMEANS=TABLES(sex*treatment) compare(sex) ADJ(BONFERRONI)
   /EMMEANS=TABLES(sex*treatment) compare(treatment) ADJ(BONFERRONI) .

GGRAPH
  /GRAPHDATASET NAME="graphdataset" VARIABLES=treatment ah_fos sex MISSING=LISTWISE 
    REPORTMISSING=NO
  /GRAPHSPEC SOURCE=INLINE.
BEGIN GPL
  SOURCE: s=userSource(id("graphdataset"))
  DATA: treatment=col(source(s), name("treatment"), unit.category())
  DATA: ah_fos=col(source(s), name("ah_fos"))
  DATA: sex=col(source(s), name("sex"), unit.category())
  DATA: id=col(source(s), name("$CASENUM"), unit.category())
  COORD: rect(dim(1,2), cluster(3,0))
  GUIDE: axis(dim(3), label("treatment"))
  GUIDE: axis(dim(2), label("ah_fos"))
  GUIDE: legend(aesthetic(aesthetic.color), label("sex"))
  GUIDE: text.title(label("Clustered Boxplot of ah_fos by treatment by sex"))
  SCALE: linear(dim(2), include(0))
  ELEMENT: schema(position(bin.quantile.letter(sex*ah_fos*treatment)), color(sex), label(id))
END GPL.

MIXED ah_perk BY sex treatment littersize
  /CRITERIA=DFMETHOD(SATTERTHWAITE) CIN(95) MXITER(100) MXSTEP(10) SCORING(1) 
    SINGULAR(0.000000000001) HCONVERGE(0.00000001, RELATIVE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0, 
    ABSOLUTE)
  /FIXED=sex treatment sex*treatment | SSTYPE(3)
  /METHOD=REML
  /RANDOM=littersize | COVTYPE(VC)
  /EMMEANS=TABLES(OVERALL)
  /EMMEANS=TABLES(sex) COMPARE ADJ(BONFERRONI)
  /EMMEANS=TABLES(treatment) COMPARE ADJ(BONFERRONI)
  /EMMEANS=TABLES(sex*treatment)
   /EMMEANS=TABLES(sex*treatment) compare(sex) ADJ(BONFERRONI)
   /EMMEANS=TABLES(sex*treatment) compare(treatment) ADJ(BONFERRONI) .

GGRAPH
  /GRAPHDATASET NAME="graphdataset" VARIABLES=treatment ah_perk sex MISSING=LISTWISE 
    REPORTMISSING=NO
  /GRAPHSPEC SOURCE=INLINE.
BEGIN GPL
  SOURCE: s=userSource(id("graphdataset"))
  DATA: treatment=col(source(s), name("treatment"), unit.category())
  DATA: ah_perk=col(source(s), name("ah_perk"))
  DATA: sex=col(source(s), name("sex"), unit.category())
  DATA: id=col(source(s), name("$CASENUM"), unit.category())
  COORD: rect(dim(1,2), cluster(3,0))
  GUIDE: axis(dim(3), label("treatment"))
  GUIDE: axis(dim(2), label("ah_perk"))
  GUIDE: legend(aesthetic(aesthetic.color), label("sex"))
  GUIDE: text.title(label("Clustered Boxplot of ah_perk by treatment by sex"))
  SCALE: linear(dim(2), include(0))
  ELEMENT: schema(position(bin.quantile.letter(sex*ah_perk*treatment)), color(sex), label(id))
END GPL.






MIXED bst_fos BY sex treatment littersize
  /CRITERIA=DFMETHOD(SATTERTHWAITE) CIN(95) MXITER(100) MXSTEP(10) SCORING(1) 
    SINGULAR(0.000000000001) HCONVERGE(0.00000001, RELATIVE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0, 
    ABSOLUTE)
  /FIXED=sex treatment sex*treatment | SSTYPE(3)
  /METHOD=REML
  /RANDOM=littersize | COVTYPE(VC)
  /EMMEANS=TABLES(OVERALL)
  /EMMEANS=TABLES(sex) COMPARE ADJ(BONFERRONI)
  /EMMEANS=TABLES(treatment) COMPARE ADJ(BONFERRONI)
  /EMMEANS=TABLES(sex*treatment)
   /EMMEANS=TABLES(sex*treatment) compare(sex) ADJ(BONFERRONI)
   /EMMEANS=TABLES(sex*treatment) compare(treatment) ADJ(BONFERRONI) .

GGRAPH
  /GRAPHDATASET NAME="graphdataset" VARIABLES=treatment bst_fos sex MISSING=LISTWISE 
    REPORTMISSING=NO
  /GRAPHSPEC SOURCE=INLINE.
BEGIN GPL
  SOURCE: s=userSource(id("graphdataset"))
  DATA: treatment=col(source(s), name("treatment"), unit.category())
  DATA: bst_fos=col(source(s), name("bst_fos"))
  DATA: sex=col(source(s), name("sex"), unit.category())
  DATA: id=col(source(s), name("$CASENUM"), unit.category())
  COORD: rect(dim(1,2), cluster(3,0))
  GUIDE: axis(dim(3), label("treatment"))
  GUIDE: axis(dim(2), label("bst_fos"))
  GUIDE: legend(aesthetic(aesthetic.color), label("sex"))
  GUIDE: text.title(label("Clustered Boxplot of bst_fos by treatment by sex"))
  SCALE: linear(dim(2), include(0))
  ELEMENT: schema(position(bin.quantile.letter(sex*bst_fos*treatment)), color(sex), label(id))
END GPL.

MIXED bst_perk BY sex treatment littersize
  /CRITERIA=DFMETHOD(SATTERTHWAITE) CIN(95) MXITER(100) MXSTEP(10) SCORING(1) 
    SINGULAR(0.000000000001) HCONVERGE(0.00000001, RELATIVE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0, 
    ABSOLUTE)
  /FIXED=sex treatment sex*treatment | SSTYPE(3)
  /METHOD=REML
  /RANDOM=littersize | COVTYPE(VC)
  /EMMEANS=TABLES(OVERALL)
  /EMMEANS=TABLES(sex) COMPARE ADJ(BONFERRONI)
  /EMMEANS=TABLES(treatment) COMPARE ADJ(BONFERRONI)
  /EMMEANS=TABLES(sex*treatment)
   /EMMEANS=TABLES(sex*treatment) compare(sex) ADJ(BONFERRONI)
   /EMMEANS=TABLES(sex*treatment) compare(treatment) ADJ(BONFERRONI) .

GGRAPH
  /GRAPHDATASET NAME="graphdataset" VARIABLES=treatment bst_perk sex MISSING=LISTWISE 
    REPORTMISSING=NO
  /GRAPHSPEC SOURCE=INLINE.
BEGIN GPL
  SOURCE: s=userSource(id("graphdataset"))
  DATA: treatment=col(source(s), name("treatment"), unit.category())
  DATA: bst_perk=col(source(s), name("bst_perk"))
  DATA: sex=col(source(s), name("sex"), unit.category())
  DATA: id=col(source(s), name("$CASENUM"), unit.category())
  COORD: rect(dim(1,2), cluster(3,0))
  GUIDE: axis(dim(3), label("treatment"))
  GUIDE: axis(dim(2), label("bst_perk"))
  GUIDE: legend(aesthetic(aesthetic.color), label("sex"))
  GUIDE: text.title(label("Clustered Boxplot of bst_perk by treatment by sex"))
  SCALE: linear(dim(2), include(0))
  ELEMENT: schema(position(bin.quantile.letter(sex*bst_perk*treatment)), color(sex), label(id))
END GPL.







MIXED mea_fos BY sex treatment littersize
  /CRITERIA=DFMETHOD(SATTERTHWAITE) CIN(95) MXITER(100) MXSTEP(10) SCORING(1) 
    SINGULAR(0.000000000001) HCONVERGE(0.00000001, RELATIVE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0, 
    ABSOLUTE)
  /FIXED=sex treatment sex*treatment | SSTYPE(3)
  /METHOD=REML
  /RANDOM=littersize | COVTYPE(VC)
  /EMMEANS=TABLES(OVERALL)
  /EMMEANS=TABLES(sex) COMPARE ADJ(BONFERRONI)
  /EMMEANS=TABLES(treatment) COMPARE ADJ(BONFERRONI)
  /EMMEANS=TABLES(sex*treatment)
   /EMMEANS=TABLES(sex*treatment) compare(sex) ADJ(BONFERRONI)
   /EMMEANS=TABLES(sex*treatment) compare(treatment) ADJ(BONFERRONI) .

GGRAPH
  /GRAPHDATASET NAME="graphdataset" VARIABLES=treatment mea_fos sex MISSING=LISTWISE 
    REPORTMISSING=NO
  /GRAPHSPEC SOURCE=INLINE.
BEGIN GPL
  SOURCE: s=userSource(id("graphdataset"))
  DATA: treatment=col(source(s), name("treatment"), unit.category())
  DATA: mea_fos=col(source(s), name("mea_fos"))
  DATA: sex=col(source(s), name("sex"), unit.category())
  DATA: id=col(source(s), name("$CASENUM"), unit.category())
  COORD: rect(dim(1,2), cluster(3,0))
  GUIDE: axis(dim(3), label("treatment"))
  GUIDE: axis(dim(2), label("mea_fos"))
  GUIDE: legend(aesthetic(aesthetic.color), label("sex"))
  GUIDE: text.title(label("Clustered Boxplot of mea_fos by treatment by sex"))
  SCALE: linear(dim(2), include(0))
  ELEMENT: schema(position(bin.quantile.letter(sex*mea_fos*treatment)), color(sex), label(id))
END GPL.

MIXED mea_perk BY sex treatment littersize
  /CRITERIA=DFMETHOD(SATTERTHWAITE) CIN(95) MXITER(100) MXSTEP(10) SCORING(1) 
    SINGULAR(0.000000000001) HCONVERGE(0.00000001, RELATIVE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0, 
    ABSOLUTE)
  /FIXED=sex treatment sex*treatment | SSTYPE(3)
  /METHOD=REML
  /RANDOM=littersize | COVTYPE(VC)
  /EMMEANS=TABLES(OVERALL)
  /EMMEANS=TABLES(sex) COMPARE ADJ(BONFERRONI)
  /EMMEANS=TABLES(treatment) COMPARE ADJ(BONFERRONI)
  /EMMEANS=TABLES(sex*treatment)
   /EMMEANS=TABLES(sex*treatment) compare(sex) ADJ(BONFERRONI)
   /EMMEANS=TABLES(sex*treatment) compare(treatment) ADJ(BONFERRONI) .

GGRAPH
  /GRAPHDATASET NAME="graphdataset" VARIABLES=treatment mea_perk sex MISSING=LISTWISE 
    REPORTMISSING=NO
  /GRAPHSPEC SOURCE=INLINE.
BEGIN GPL
  SOURCE: s=userSource(id("graphdataset"))
  DATA: treatment=col(source(s), name("treatment"), unit.category())
  DATA: mea_perk=col(source(s), name("mea_perk"))
  DATA: sex=col(source(s), name("sex"), unit.category())
  DATA: id=col(source(s), name("$CASENUM"), unit.category())
  COORD: rect(dim(1,2), cluster(3,0))
  GUIDE: axis(dim(3), label("treatment"))
  GUIDE: axis(dim(2), label("mea_perk"))
  GUIDE: legend(aesthetic(aesthetic.color), label("sex"))
  GUIDE: text.title(label("Clustered Boxplot of mea_perk by treatment by sex"))
  SCALE: linear(dim(2), include(0))
  ELEMENT: schema(position(bin.quantile.letter(sex*mea_perk*treatment)), color(sex), label(id))
END GPL.






MIXED vmh_fos BY sex treatment littersize
  /CRITERIA=DFMETHOD(SATTERTHWAITE) CIN(95) MXITER(100) MXSTEP(10) SCORING(1) 
    SINGULAR(0.000000000001) HCONVERGE(0.00000001, RELATIVE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0, 
    ABSOLUTE)
  /FIXED=sex treatment sex*treatment | SSTYPE(3)
  /METHOD=REML
  /RANDOM=littersize | COVTYPE(VC)
  /EMMEANS=TABLES(OVERALL)
  /EMMEANS=TABLES(sex) COMPARE ADJ(BONFERRONI)
  /EMMEANS=TABLES(treatment) COMPARE ADJ(BONFERRONI)
  /EMMEANS=TABLES(sex*treatment)
   /EMMEANS=TABLES(sex*treatment) compare(sex) ADJ(BONFERRONI)
   /EMMEANS=TABLES(sex*treatment) compare(treatment) ADJ(BONFERRONI) .

GGRAPH
  /GRAPHDATASET NAME="graphdataset" VARIABLES=treatment vmh_fos sex MISSING=LISTWISE 
    REPORTMISSING=NO
  /GRAPHSPEC SOURCE=INLINE.
BEGIN GPL
  SOURCE: s=userSource(id("graphdataset"))
  DATA: treatment=col(source(s), name("treatment"), unit.category())
  DATA: vmh_fos=col(source(s), name("vmh_fos"))
  DATA: sex=col(source(s), name("sex"), unit.category())
  DATA: id=col(source(s), name("$CASENUM"), unit.category())
  COORD: rect(dim(1,2), cluster(3,0))
  GUIDE: axis(dim(3), label("treatment"))
  GUIDE: axis(dim(2), label("vmh_fos"))
  GUIDE: legend(aesthetic(aesthetic.color), label("sex"))
  GUIDE: text.title(label("Clustered Boxplot of vmh_fos by treatment by sex"))
  SCALE: linear(dim(2), include(0))
  ELEMENT: schema(position(bin.quantile.letter(sex*vmh_fos*treatment)), color(sex), label(id))
END GPL.

MIXED vmh_perk BY sex treatment littersize
  /CRITERIA=DFMETHOD(SATTERTHWAITE) CIN(95) MXITER(100) MXSTEP(10) SCORING(1) 
    SINGULAR(0.000000000001) HCONVERGE(0.00000001, RELATIVE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0, 
    ABSOLUTE)
  /FIXED=sex treatment sex*treatment | SSTYPE(3)
  /METHOD=REML
  /RANDOM=littersize | COVTYPE(VC)
  /EMMEANS=TABLES(OVERALL)
  /EMMEANS=TABLES(sex) COMPARE ADJ(BONFERRONI)
  /EMMEANS=TABLES(treatment) COMPARE ADJ(BONFERRONI)
  /EMMEANS=TABLES(sex*treatment)
   /EMMEANS=TABLES(sex*treatment) compare(sex) ADJ(BONFERRONI)
   /EMMEANS=TABLES(sex*treatment) compare(treatment) ADJ(BONFERRONI) .

GGRAPH
  /GRAPHDATASET NAME="graphdataset" VARIABLES=treatment vmh_perk sex MISSING=LISTWISE 
    REPORTMISSING=NO
  /GRAPHSPEC SOURCE=INLINE.
BEGIN GPL
  SOURCE: s=userSource(id("graphdataset"))
  DATA: treatment=col(source(s), name("treatment"), unit.category())
  DATA: vmh_perk=col(source(s), name("vmh_perk"))
  DATA: sex=col(source(s), name("sex"), unit.category())
  DATA: id=col(source(s), name("$CASENUM"), unit.category())
  COORD: rect(dim(1,2), cluster(3,0))
  GUIDE: axis(dim(3), label("treatment"))
  GUIDE: axis(dim(2), label("vmh_perk"))
  GUIDE: legend(aesthetic(aesthetic.color), label("sex"))
  GUIDE: text.title(label("Clustered Boxplot of vmh_perk by treatment by sex"))
  SCALE: linear(dim(2), include(0))
  ELEMENT: schema(position(bin.quantile.letter(sex*vmh_perk*treatment)), color(sex), label(id))
END GPL.






MIXED ssb_total_aggression_prop BY sex treatment littersize
  /CRITERIA=DFMETHOD(SATTERTHWAITE) CIN(95) MXITER(100) MXSTEP(10) SCORING(1) 
    SINGULAR(0.000000000001) HCONVERGE(0.00000001, RELATIVE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0, 
    ABSOLUTE)
  /FIXED=sex treatment sex*treatment | SSTYPE(3)
  /METHOD=REML
  /RANDOM=littersize | COVTYPE(VC)
  /EMMEANS=TABLES(OVERALL)
  /EMMEANS=TABLES(sex) COMPARE ADJ(BONFERRONI)
  /EMMEANS=TABLES(treatment) COMPARE ADJ(BONFERRONI)
  /EMMEANS=TABLES(sex*treatment)
   /EMMEANS=TABLES(sex*treatment) compare(sex) ADJ(BONFERRONI)
   /EMMEANS=TABLES(sex*treatment) compare(treatment) ADJ(BONFERRONI) .

GGRAPH
  /GRAPHDATASET NAME="graphdataset" VARIABLES=treatment ssb_total_aggression_prop sex MISSING=LISTWISE 
    REPORTMISSING=NO
  /GRAPHSPEC SOURCE=INLINE.
BEGIN GPL
  SOURCE: s=userSource(id("graphdataset"))
  DATA: treatment=col(source(s), name("treatment"), unit.category())
  DATA: ssb_total_aggression_prop=col(source(s), name("ssb_total_aggression_prop"))
  DATA: sex=col(source(s), name("sex"), unit.category())
  DATA: id=col(source(s), name("$CASENUM"), unit.category())
  COORD: rect(dim(1,2), cluster(3,0))
  GUIDE: axis(dim(3), label("treatment"))
  GUIDE: axis(dim(2), label("ssb_total_aggression_prop"))
  GUIDE: legend(aesthetic(aesthetic.color), label("sex"))
  GUIDE: text.title(label("Clustered Boxplot of ssb_total_aggression_prop by treatment by sex"))
  SCALE: linear(dim(2), include(0))
  ELEMENT: schema(position(bin.quantile.letter(sex*ssb_total_aggression_prop*treatment)), color(sex), label(id))
END GPL.







MIXED ssb_total_prosocial_prop BY sex treatment littersize
  /CRITERIA=DFMETHOD(SATTERTHWAITE) CIN(95) MXITER(100) MXSTEP(10) SCORING(1) 
    SINGULAR(0.000000000001) HCONVERGE(0.00000001, RELATIVE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0, 
    ABSOLUTE)
  /FIXED=sex treatment sex*treatment | SSTYPE(3)
  /METHOD=REML
  /RANDOM=littersize | COVTYPE(VC)
  /EMMEANS=TABLES(OVERALL)
  /EMMEANS=TABLES(sex) COMPARE ADJ(BONFERRONI)
  /EMMEANS=TABLES(treatment) COMPARE ADJ(BONFERRONI)
  /EMMEANS=TABLES(sex*treatment)
   /EMMEANS=TABLES(sex*treatment) compare(sex) ADJ(BONFERRONI)
   /EMMEANS=TABLES(sex*treatment) compare(treatment) ADJ(BONFERRONI) .

GGRAPH
  /GRAPHDATASET NAME="graphdataset" VARIABLES=treatment ssb_total_prosocial_prop sex MISSING=LISTWISE 
    REPORTMISSING=NO
  /GRAPHSPEC SOURCE=INLINE.
BEGIN GPL
  SOURCE: s=userSource(id("graphdataset"))
  DATA: treatment=col(source(s), name("treatment"), unit.category())
  DATA: ssb_total_prosocial_prop=col(source(s), name("ssb_total_prosocial_prop"))
  DATA: sex=col(source(s), name("sex"), unit.category())
  DATA: id=col(source(s), name("$CASENUM"), unit.category())
  COORD: rect(dim(1,2), cluster(3,0))
  GUIDE: axis(dim(3), label("treatment"))
  GUIDE: axis(dim(2), label("ssb_total_prosocial_prop"))
  GUIDE: legend(aesthetic(aesthetic.color), label("sex"))
  GUIDE: text.title(label("Clustered Boxplot of ssb_total_prosocial_prop by treatment by sex"))
  SCALE: linear(dim(2), include(0))
  ELEMENT: schema(position(bin.quantile.letter(sex*ssb_total_prosocial_prop*treatment)), color(sex), label(id))
END GPL.







MIXED osb_total_aggression_prop BY sex treatment littersize
  /CRITERIA=DFMETHOD(SATTERTHWAITE) CIN(95) MXITER(100) MXSTEP(10) SCORING(1) 
    SINGULAR(0.000000000001) HCONVERGE(0.00000001, RELATIVE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0, 
    ABSOLUTE)
  /FIXED=sex treatment sex*treatment | SSTYPE(3)
  /METHOD=REML
  /RANDOM=littersize | COVTYPE(VC)
  /EMMEANS=TABLES(OVERALL)
  /EMMEANS=TABLES(sex) COMPARE ADJ(BONFERRONI)
  /EMMEANS=TABLES(treatment) COMPARE ADJ(BONFERRONI)
  /EMMEANS=TABLES(sex*treatment)
   /EMMEANS=TABLES(sex*treatment) compare(sex) ADJ(BONFERRONI)
   /EMMEANS=TABLES(sex*treatment) compare(treatment) ADJ(BONFERRONI) .

GGRAPH
  /GRAPHDATASET NAME="graphdataset" VARIABLES=treatment osb_total_aggression_prop sex MISSING=LISTWISE 
    REPORTMISSING=NO
  /GRAPHSPEC SOURCE=INLINE.
BEGIN GPL
  SOURCE: s=userSource(id("graphdataset"))
  DATA: treatment=col(source(s), name("treatment"), unit.category())
  DATA: osb_total_aggression_prop=col(source(s), name("osb_total_aggression_prop"))
  DATA: sex=col(source(s), name("sex"), unit.category())
  DATA: id=col(source(s), name("$CASENUM"), unit.category())
  COORD: rect(dim(1,2), cluster(3,0))
  GUIDE: axis(dim(3), label("treatment"))
  GUIDE: axis(dim(2), label("osb_total_aggression_prop"))
  GUIDE: legend(aesthetic(aesthetic.color), label("sex"))
  GUIDE: text.title(label("Clustered Boxplot of osb_total_aggression_prop by treatment by sex"))
  SCALE: linear(dim(2), include(0))
  ELEMENT: schema(position(bin.quantile.letter(sex*osb_total_aggression_prop*treatment)), color(sex), label(id))
END GPL.







MIXED osb_total_prosocial_prop BY sex treatment littersize
  /CRITERIA=DFMETHOD(SATTERTHWAITE) CIN(95) MXITER(100) MXSTEP(10) SCORING(1) 
    SINGULAR(0.000000000001) HCONVERGE(0.00000001, RELATIVE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0, 
    ABSOLUTE)
  /FIXED=sex treatment sex*treatment | SSTYPE(3)
  /METHOD=REML
  /RANDOM=littersize | COVTYPE(VC)
  /EMMEANS=TABLES(OVERALL)
  /EMMEANS=TABLES(sex) COMPARE ADJ(BONFERRONI)
  /EMMEANS=TABLES(treatment) COMPARE ADJ(BONFERRONI)
  /EMMEANS=TABLES(sex*treatment)
   /EMMEANS=TABLES(sex*treatment) compare(sex) ADJ(BONFERRONI)
   /EMMEANS=TABLES(sex*treatment) compare(treatment) ADJ(BONFERRONI) .

GGRAPH
  /GRAPHDATASET NAME="graphdataset" VARIABLES=treatment osb_total_prosocial_prop sex MISSING=LISTWISE 
    REPORTMISSING=NO
  /GRAPHSPEC SOURCE=INLINE.
BEGIN GPL
  SOURCE: s=userSource(id("graphdataset"))
  DATA: treatment=col(source(s), name("treatment"), unit.category())
  DATA: osb_total_prosocial_prop=col(source(s), name("osb_total_prosocial_prop"))
  DATA: sex=col(source(s), name("sex"), unit.category())
  DATA: id=col(source(s), name("$CASENUM"), unit.category())
  COORD: rect(dim(1,2), cluster(3,0))
  GUIDE: axis(dim(3), label("treatment"))
  GUIDE: axis(dim(2), label("osb_total_prosocial_prop"))
  GUIDE: legend(aesthetic(aesthetic.color), label("sex"))
  GUIDE: text.title(label("Clustered Boxplot of osb_total_prosocial_prop by treatment by sex"))
  SCALE: linear(dim(2), include(0))
  ELEMENT: schema(position(bin.quantile.letter(sex*osb_total_prosocial_prop*treatment)), color(sex), label(id))
END GPL.






MIXED of_center_middle_prop BY sex treatment littersize
  /CRITERIA=DFMETHOD(SATTERTHWAITE) CIN(95) MXITER(100) MXSTEP(10) SCORING(1) 
    SINGULAR(0.000000000001) HCONVERGE(0.00000001, RELATIVE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0, 
    ABSOLUTE)
  /FIXED=sex treatment sex*treatment | SSTYPE(3)
  /METHOD=REML
  /RANDOM=littersize | COVTYPE(VC)
  /EMMEANS=TABLES(OVERALL)
  /EMMEANS=TABLES(sex) COMPARE ADJ(BONFERRONI)
  /EMMEANS=TABLES(treatment) COMPARE ADJ(BONFERRONI)
  /EMMEANS=TABLES(sex*treatment)
   /EMMEANS=TABLES(sex*treatment) compare(sex) ADJ(BONFERRONI)
   /EMMEANS=TABLES(sex*treatment) compare(treatment) ADJ(BONFERRONI) .

GGRAPH
  /GRAPHDATASET NAME="graphdataset" VARIABLES=treatment of_center_middle_prop sex MISSING=LISTWISE 
    REPORTMISSING=NO
  /GRAPHSPEC SOURCE=INLINE.
BEGIN GPL
  SOURCE: s=userSource(id("graphdataset"))
  DATA: treatment=col(source(s), name("treatment"), unit.category())
  DATA: of_center_middle_prop=col(source(s), name("of_center_middle_prop"))
  DATA: sex=col(source(s), name("sex"), unit.category())
  DATA: id=col(source(s), name("$CASENUM"), unit.category())
  COORD: rect(dim(1,2), cluster(3,0))
  GUIDE: axis(dim(3), label("treatment"))
  GUIDE: axis(dim(2), label("of_center_middle_prop"))
  GUIDE: legend(aesthetic(aesthetic.color), label("sex"))
  GUIDE: text.title(label("Clustered Boxplot of of_center_middle_prop by treatment by sex"))
  SCALE: linear(dim(2), include(0))
  ELEMENT: schema(position(bin.quantile.letter(sex*of_center_middle_prop*treatment)), color(sex), label(id))
END GPL.






MIXED nor_lower_middle_prop BY sex treatment littersize
  /CRITERIA=DFMETHOD(SATTERTHWAITE) CIN(95) MXITER(100) MXSTEP(10) SCORING(1) 
    SINGULAR(0.000000000001) HCONVERGE(0.00000001, RELATIVE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0, 
    ABSOLUTE)
  /FIXED=sex treatment sex*treatment | SSTYPE(3)
  /METHOD=REML
  /RANDOM=littersize | COVTYPE(VC)
  /EMMEANS=TABLES(OVERALL)
  /EMMEANS=TABLES(sex) COMPARE ADJ(BONFERRONI)
  /EMMEANS=TABLES(treatment) COMPARE ADJ(BONFERRONI)
  /EMMEANS=TABLES(sex*treatment)
   /EMMEANS=TABLES(sex*treatment) compare(sex) ADJ(BONFERRONI)
   /EMMEANS=TABLES(sex*treatment) compare(treatment) ADJ(BONFERRONI) .

GGRAPH
  /GRAPHDATASET NAME="graphdataset" VARIABLES=treatment nor_lower_middle_prop sex MISSING=LISTWISE 
    REPORTMISSING=NO
  /GRAPHSPEC SOURCE=INLINE.
BEGIN GPL
  SOURCE: s=userSource(id("graphdataset"))
  DATA: treatment=col(source(s), name("treatment"), unit.category())
  DATA: nor_lower_middle_prop=col(source(s), name("nor_lower_middle_prop"))
  DATA: sex=col(source(s), name("sex"), unit.category())
  DATA: id=col(source(s), name("$CASENUM"), unit.category())
  COORD: rect(dim(1,2), cluster(3,0))
  GUIDE: axis(dim(3), label("treatment"))
  GUIDE: axis(dim(2), label("nor_lower_middle_prop"))
  GUIDE: legend(aesthetic(aesthetic.color), label("sex"))
  GUIDE: text.title(label("Clustered Boxplot of nor_lower_middle_prop by treatment by sex"))
  SCALE: linear(dim(2), include(0))
  ELEMENT: schema(position(bin.quantile.letter(sex*nor_lower_middle_prop*treatment)), color(sex), label(id))
END GPL.







MIXED ssexp_stimulus_prop BY sex treatment littersize
  /CRITERIA=DFMETHOD(SATTERTHWAITE) CIN(95) MXITER(100) MXSTEP(10) SCORING(1) 
    SINGULAR(0.000000000001) HCONVERGE(0.00000001, RELATIVE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0, 
    ABSOLUTE)
  /FIXED=sex treatment sex*treatment | SSTYPE(3)
  /METHOD=REML
  /RANDOM=littersize | COVTYPE(VC)
  /EMMEANS=TABLES(OVERALL)
  /EMMEANS=TABLES(sex) COMPARE ADJ(BONFERRONI)
  /EMMEANS=TABLES(treatment) COMPARE ADJ(BONFERRONI)
  /EMMEANS=TABLES(sex*treatment)
   /EMMEANS=TABLES(sex*treatment) compare(sex) ADJ(BONFERRONI)
   /EMMEANS=TABLES(sex*treatment) compare(treatment) ADJ(BONFERRONI) .

GGRAPH
  /GRAPHDATASET NAME="graphdataset" VARIABLES=treatment ssexp_stimulus_prop sex MISSING=LISTWISE 
    REPORTMISSING=NO
  /GRAPHSPEC SOURCE=INLINE.
BEGIN GPL
  SOURCE: s=userSource(id("graphdataset"))
  DATA: treatment=col(source(s), name("treatment"), unit.category())
  DATA: ssexp_stimulus_prop=col(source(s), name("ssexp_stimulus_prop"))
  DATA: sex=col(source(s), name("sex"), unit.category())
  DATA: id=col(source(s), name("$CASENUM"), unit.category())
  COORD: rect(dim(1,2), cluster(3,0))
  GUIDE: axis(dim(3), label("treatment"))
  GUIDE: axis(dim(2), label("ssexp_stimulus_prop"))
  GUIDE: legend(aesthetic(aesthetic.color), label("sex"))
  GUIDE: text.title(label("Clustered Boxplot of ssexp_stimulus_prop by treatment by sex"))
  SCALE: linear(dim(2), include(0))
  ELEMENT: schema(position(bin.quantile.letter(sex*ssexp_stimulus_prop*treatment)), color(sex), label(id))
END GPL.

DATASET ACTIVATE DataSet1.
EXAMINE VARIABLES=ssexp_stimulus_prop BY treatment
  /PLOT=BOXPLOT
  /STATISTICS=NONE
  /NOTOTAL.





MIXED msg_total_interaction_prop BY sex treatment littersize
  /CRITERIA=DFMETHOD(SATTERTHWAITE) CIN(95) MXITER(100) MXSTEP(10) SCORING(1) 
    SINGULAR(0.000000000001) HCONVERGE(0.00000001, RELATIVE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0, 
    ABSOLUTE)
  /FIXED=sex treatment sex*treatment | SSTYPE(3)
  /METHOD=REML
  /RANDOM=littersize | COVTYPE(VC)
  /EMMEANS=TABLES(OVERALL)
  /EMMEANS=TABLES(sex) COMPARE ADJ(BONFERRONI)
  /EMMEANS=TABLES(treatment) COMPARE ADJ(BONFERRONI)
  /EMMEANS=TABLES(sex*treatment)
   /EMMEANS=TABLES(sex*treatment) compare(sex) ADJ(BONFERRONI)
   /EMMEANS=TABLES(sex*treatment) compare(treatment) ADJ(BONFERRONI) .

GGRAPH
  /GRAPHDATASET NAME="graphdataset" VARIABLES=treatment msg_total_interaction_prop sex MISSING=LISTWISE 
    REPORTMISSING=NO
  /GRAPHSPEC SOURCE=INLINE.
BEGIN GPL
  SOURCE: s=userSource(id("graphdataset"))
  DATA: treatment=col(source(s), name("treatment"), unit.category())
  DATA: msg_total_interaction_prop=col(source(s), name("msg_total_interaction_prop"))
  DATA: sex=col(source(s), name("sex"), unit.category())
  DATA: id=col(source(s), name("$CASENUM"), unit.category())
  COORD: rect(dim(1,2), cluster(3,0))
  GUIDE: axis(dim(3), label("treatment"))
  GUIDE: axis(dim(2), label("msg_total_interaction_prop"))
  GUIDE: legend(aesthetic(aesthetic.color), label("sex"))
  GUIDE: text.title(label("Clustered Boxplot of msg_total_interaction_prop by treatment by sex"))
  SCALE: linear(dim(2), include(0))
  ELEMENT: schema(position(bin.quantile.letter(sex*msg_total_interaction_prop*treatment)), color(sex), label(id))
END GPL.







MIXED total_ends_diff_ssexpmsg BY sex treatment littersize
  /CRITERIA=DFMETHOD(SATTERTHWAITE) CIN(95) MXITER(100) MXSTEP(10) SCORING(1) 
    SINGULAR(0.000000000001) HCONVERGE(0.00000001, RELATIVE) LCONVERGE(0, ABSOLUTE) PCONVERGE(0, 
    ABSOLUTE)
  /FIXED=sex treatment sex*treatment | SSTYPE(3)
  /METHOD=REML
  /RANDOM=littersize | COVTYPE(VC)
  /EMMEANS=TABLES(OVERALL)
  /EMMEANS=TABLES(sex) COMPARE ADJ(BONFERRONI)
  /EMMEANS=TABLES(treatment) COMPARE ADJ(BONFERRONI)
  /EMMEANS=TABLES(sex*treatment)
   /EMMEANS=TABLES(sex*treatment) compare(sex) ADJ(BONFERRONI)
   /EMMEANS=TABLES(sex*treatment) compare(treatment) ADJ(BONFERRONI) .

GGRAPH
  /GRAPHDATASET NAME="graphdataset" VARIABLES=treatment total_ends_diff_ssexpmsg sex MISSING=LISTWISE 
    REPORTMISSING=NO
  /GRAPHSPEC SOURCE=INLINE.
BEGIN GPL
  SOURCE: s=userSource(id("graphdataset"))
  DATA: treatment=col(source(s), name("treatment"), unit.category())
  DATA: total_ends_diff_ssexpmsg=col(source(s), name("total_ends_diff_ssexpmsg"))
  DATA: sex=col(source(s), name("sex"), unit.category())
  DATA: id=col(source(s), name("$CASENUM"), unit.category())
  COORD: rect(dim(1,2), cluster(3,0))
  GUIDE: axis(dim(3), label("treatment"))
  GUIDE: axis(dim(2), label("total_ends_diff_ssexpmsg"))
  GUIDE: legend(aesthetic(aesthetic.color), label("sex"))
  GUIDE: text.title(label("Clustered Boxplot of total_ends_diff_ssexpmsg by treatment by sex"))
  SCALE: linear(dim(2), include(0))
  ELEMENT: schema(position(bin.quantile.letter(sex*total_ends_diff_ssexpmsg*treatment)), color(sex), label(id))
END GPL.








CORRELATIONS
  /VARIABLES=ssexp_stimulus_prop poa_fos pvn_fos ls_fos ah_fos bst_fos mea_fos vmh_fos
  /PRINT=TWOTAIL NOSIG FULL
  /MISSING=PAIRWISE.

GGRAPH
  /GRAPHDATASET NAME="graphdataset" VARIABLES=poa_fos ssexp_stimulus_prop sex MISSING=LISTWISE 
    REPORTMISSING=NO
  /GRAPHSPEC SOURCE=INLINE
  /FITLINE TOTAL=YES SUBGROUP=NO.
BEGIN GPL
  SOURCE: s=userSource(id("graphdataset"))
  DATA: poa_fos=col(source(s), name("poa_fos"))
  DATA: ssexp_stimulus_prop=col(source(s), name("ssexp_stimulus_prop"))
  DATA: sex=col(source(s), name("sex"), unit.category())
  GUIDE: axis(dim(1), label("poa_fos"))
  GUIDE: axis(dim(2), label("ssexp_stimulus_prop"))
  GUIDE: legend(aesthetic(aesthetic.color.interior), label("sex"))
  GUIDE: text.title(label("Scatter Plot of ssexp_stimulus_prop by poa_fos by sex"))
  ELEMENT: point(position(poa_fos*ssexp_stimulus_prop), color.interior(sex))
END GPL.

GGRAPH
  /GRAPHDATASET NAME="graphdataset" VARIABLES=pvn_fos ssexp_stimulus_prop sex MISSING=LISTWISE 
    REPORTMISSING=NO
  /GRAPHSPEC SOURCE=INLINE
  /FITLINE TOTAL=YES SUBGROUP=NO.
BEGIN GPL
  SOURCE: s=userSource(id("graphdataset"))
  DATA: pvn_fos=col(source(s), name("pvn_fos"))
  DATA: ssexp_stimulus_prop=col(source(s), name("ssexp_stimulus_prop"))
  DATA: sex=col(source(s), name("sex"), unit.category())
  GUIDE: axis(dim(1), label("pvn_fos"))
  GUIDE: axis(dim(2), label("ssexp_stimulus_prop"))
  GUIDE: legend(aesthetic(aesthetic.color.interior), label("sex"))
  GUIDE: text.title(label("Scatter Plot of ssexp_stimulus_prop by pvn_fos by sex"))
  ELEMENT: point(position(pvn_fos*ssexp_stimulus_prop), color.interior(sex))
END GPL.

GGRAPH
  /GRAPHDATASET NAME="graphdataset" VARIABLES=ls_fos ssexp_stimulus_prop sex MISSING=LISTWISE 
    REPORTMISSING=NO
  /GRAPHSPEC SOURCE=INLINE
  /FITLINE TOTAL=YES SUBGROUP=NO.
BEGIN GPL
  SOURCE: s=userSource(id("graphdataset"))
  DATA: ls_fos=col(source(s), name("ls_fos"))
  DATA: ssexp_stimulus_prop=col(source(s), name("ssexp_stimulus_prop"))
  DATA: sex=col(source(s), name("sex"), unit.category())
  GUIDE: axis(dim(1), label("ls_fos"))
  GUIDE: axis(dim(2), label("ssexp_stimulus_prop"))
  GUIDE: legend(aesthetic(aesthetic.color.interior), label("sex"))
  GUIDE: text.title(label("Scatter Plot of ssexp_stimulus_prop by ls_fos by sex"))
  ELEMENT: point(position(ls_fos*ssexp_stimulus_prop), color.interior(sex))
END GPL.

GGRAPH
  /GRAPHDATASET NAME="graphdataset" VARIABLES=ah_fos ssexp_stimulus_prop sex MISSING=LISTWISE 
    REPORTMISSING=NO
  /GRAPHSPEC SOURCE=INLINE
  /FITLINE TOTAL=YES SUBGROUP=NO.
BEGIN GPL
  SOURCE: s=userSource(id("graphdataset"))
  DATA: ah_fos=col(source(s), name("ah_fos"))
  DATA: ssexp_stimulus_prop=col(source(s), name("ssexp_stimulus_prop"))
  DATA: sex=col(source(s), name("sex"), unit.category())
  GUIDE: axis(dim(1), label("ah_fos"))
  GUIDE: axis(dim(2), label("ssexp_stimulus_prop"))
  GUIDE: legend(aesthetic(aesthetic.color.interior), label("sex"))
  GUIDE: text.title(label("Scatter Plot of ssexp_stimulus_prop by ah_fos by sex"))
  ELEMENT: point(position(ah_fos*ssexp_stimulus_prop), color.interior(sex))
END GPL.

GGRAPH
  /GRAPHDATASET NAME="graphdataset" VARIABLES=bst_fos ssexp_stimulus_prop sex MISSING=LISTWISE 
    REPORTMISSING=NO
  /GRAPHSPEC SOURCE=INLINE
  /FITLINE TOTAL=YES SUBGROUP=NO.
BEGIN GPL
  SOURCE: s=userSource(id("graphdataset"))
  DATA: bst_fos=col(source(s), name("bst_fos"))
  DATA: ssexp_stimulus_prop=col(source(s), name("ssexp_stimulus_prop"))
  DATA: sex=col(source(s), name("sex"), unit.category())
  GUIDE: axis(dim(1), label("bst_fos"))
  GUIDE: axis(dim(2), label("ssexp_stimulus_prop"))
  GUIDE: legend(aesthetic(aesthetic.color.interior), label("sex"))
  GUIDE: text.title(label("Scatter Plot of ssexp_stimulus_prop by bst_fos by sex"))
  ELEMENT: point(position(bst_fos*ssexp_stimulus_prop), color.interior(sex))
END GPL.

GGRAPH
  /GRAPHDATASET NAME="graphdataset" VARIABLES=mea_fos ssexp_stimulus_prop sex MISSING=LISTWISE 
    REPORTMISSING=NO
  /GRAPHSPEC SOURCE=INLINE
  /FITLINE TOTAL=YES SUBGROUP=NO.
BEGIN GPL
  SOURCE: s=userSource(id("graphdataset"))
  DATA: mea_fos=col(source(s), name("mea_fos"))
  DATA: ssexp_stimulus_prop=col(source(s), name("ssexp_stimulus_prop"))
  DATA: sex=col(source(s), name("sex"), unit.category())
  GUIDE: axis(dim(1), label("mea_fos"))
  GUIDE: axis(dim(2), label("ssexp_stimulus_prop"))
  GUIDE: legend(aesthetic(aesthetic.color.interior), label("sex"))
  GUIDE: text.title(label("Scatter Plot of ssexp_stimulus_prop by mea_fos by sex"))
  ELEMENT: point(position(mea_fos*ssexp_stimulus_prop), color.interior(sex))
END GPL.

GGRAPH
  /GRAPHDATASET NAME="graphdataset" VARIABLES=vmh_fos ssexp_stimulus_prop sex MISSING=LISTWISE 
    REPORTMISSING=NO
  /GRAPHSPEC SOURCE=INLINE
  /FITLINE TOTAL=YES SUBGROUP=NO.
BEGIN GPL
  SOURCE: s=userSource(id("graphdataset"))
  DATA: vmh_fos=col(source(s), name("vmh_fos"))
  DATA: ssexp_stimulus_prop=col(source(s), name("ssexp_stimulus_prop"))
  DATA: sex=col(source(s), name("sex"), unit.category())
  GUIDE: axis(dim(1), label("vmh_fos"))
  GUIDE: axis(dim(2), label("ssexp_stimulus_prop"))
  GUIDE: legend(aesthetic(aesthetic.color.interior), label("sex"))
  GUIDE: text.title(label("Scatter Plot of ssexp_stimulus_prop by vmh_fos by sex"))
  ELEMENT: point(position(vmh_fos*ssexp_stimulus_prop), color.interior(sex))
END GPL.









CORRELATIONS
  /VARIABLES=msg_total_interaction_prop poa_perk pvn_perk ls_perk ah_perk bst_perk mea_perk vmh_perk
  /PRINT=TWOTAIL NOSIG FULL
  /MISSING=PAIRWISE.

GGRAPH
  /GRAPHDATASET NAME="graphdataset" VARIABLES=poa_perk msg_total_interaction_prop sex MISSING=LISTWISE 
    REPORTMISSING=NO
  /GRAPHSPEC SOURCE=INLINE
  /FITLINE TOTAL=YES SUBGROUP=NO.
BEGIN GPL
  SOURCE: s=userSource(id("graphdataset"))
  DATA: poa_perk=col(source(s), name("poa_perk"))
  DATA: msg_total_interaction_prop=col(source(s), name("msg_total_interaction_prop"))
  DATA: sex=col(source(s), name("sex"), unit.category())
  GUIDE: axis(dim(1), label("poa_perk"))
  GUIDE: axis(dim(2), label("msg_total_interaction_prop"))
  GUIDE: legend(aesthetic(aesthetic.color.interior), label("sex"))
  GUIDE: text.title(label("Scatter Plot of msg_total_interaction_prop by poa_perk by sex"))
  ELEMENT: point(position(poa_perk*msg_total_interaction_prop), color.interior(sex))
END GPL.

GGRAPH
  /GRAPHDATASET NAME="graphdataset" VARIABLES=pvn_perk msg_total_interaction_prop sex MISSING=LISTWISE 
    REPORTMISSING=NO
  /GRAPHSPEC SOURCE=INLINE
  /FITLINE TOTAL=YES SUBGROUP=NO.
BEGIN GPL
  SOURCE: s=userSource(id("graphdataset"))
  DATA: pvn_perk=col(source(s), name("pvn_perk"))
  DATA: msg_total_interaction_prop=col(source(s), name("msg_total_interaction_prop"))
  DATA: sex=col(source(s), name("sex"), unit.category())
  GUIDE: axis(dim(1), label("pvn_perk"))
  GUIDE: axis(dim(2), label("msg_total_interaction_prop"))
  GUIDE: legend(aesthetic(aesthetic.color.interior), label("sex"))
  GUIDE: text.title(label("Scatter Plot of msg_total_interaction_prop by pvn_perk by sex"))
  ELEMENT: point(position(pvn_perk*msg_total_interaction_prop), color.interior(sex))
END GPL.

GGRAPH
  /GRAPHDATASET NAME="graphdataset" VARIABLES=ls_perk msg_total_interaction_prop sex MISSING=LISTWISE 
    REPORTMISSING=NO
  /GRAPHSPEC SOURCE=INLINE
  /FITLINE TOTAL=YES SUBGROUP=NO.
BEGIN GPL
  SOURCE: s=userSource(id("graphdataset"))
  DATA: ls_perk=col(source(s), name("ls_perk"))
  DATA: msg_total_interaction_prop=col(source(s), name("msg_total_interaction_prop"))
  DATA: sex=col(source(s), name("sex"), unit.category())
  GUIDE: axis(dim(1), label("ls_perk"))
  GUIDE: axis(dim(2), label("msg_total_interaction_prop"))
  GUIDE: legend(aesthetic(aesthetic.color.interior), label("sex"))
  GUIDE: text.title(label("Scatter Plot of msg_total_interaction_prop by ls_perk by sex"))
  ELEMENT: point(position(ls_perk*msg_total_interaction_prop), color.interior(sex))
END GPL.

GGRAPH
  /GRAPHDATASET NAME="graphdataset" VARIABLES=ah_perk msg_total_interaction_prop sex MISSING=LISTWISE 
    REPORTMISSING=NO
  /GRAPHSPEC SOURCE=INLINE
  /FITLINE TOTAL=YES SUBGROUP=NO.
BEGIN GPL
  SOURCE: s=userSource(id("graphdataset"))
  DATA: ah_perk=col(source(s), name("ah_perk"))
  DATA: msg_total_interaction_prop=col(source(s), name("msg_total_interaction_prop"))
  DATA: sex=col(source(s), name("sex"), unit.category())
  GUIDE: axis(dim(1), label("ah_perk"))
  GUIDE: axis(dim(2), label("msg_total_interaction_prop"))
  GUIDE: legend(aesthetic(aesthetic.color.interior), label("sex"))
  GUIDE: text.title(label("Scatter Plot of msg_total_interaction_prop by ah_perk by sex"))
  ELEMENT: point(position(ah_perk*msg_total_interaction_prop), color.interior(sex))
END GPL.

GGRAPH
  /GRAPHDATASET NAME="graphdataset" VARIABLES=bst_perk msg_total_interaction_prop sex MISSING=LISTWISE 
    REPORTMISSING=NO
  /GRAPHSPEC SOURCE=INLINE
  /FITLINE TOTAL=YES SUBGROUP=NO.
BEGIN GPL
  SOURCE: s=userSource(id("graphdataset"))
  DATA: bst_perk=col(source(s), name("bst_perk"))
  DATA: msg_total_interaction_prop=col(source(s), name("msg_total_interaction_prop"))
  DATA: sex=col(source(s), name("sex"), unit.category())
  GUIDE: axis(dim(1), label("bst_perk"))
  GUIDE: axis(dim(2), label("msg_total_interaction_prop"))
  GUIDE: legend(aesthetic(aesthetic.color.interior), label("sex"))
  GUIDE: text.title(label("Scatter Plot of msg_total_interaction_prop by bst_perk by sex"))
  ELEMENT: point(position(bst_perk*msg_total_interaction_prop), color.interior(sex))
END GPL.

GGRAPH
  /GRAPHDATASET NAME="graphdataset" VARIABLES=mea_perk msg_total_interaction_prop sex MISSING=LISTWISE 
    REPORTMISSING=NO
  /GRAPHSPEC SOURCE=INLINE
  /FITLINE TOTAL=YES SUBGROUP=NO.
BEGIN GPL
  SOURCE: s=userSource(id("graphdataset"))
  DATA: mea_perk=col(source(s), name("mea_perk"))
  DATA: msg_total_interaction_prop=col(source(s), name("msg_total_interaction_prop"))
  DATA: sex=col(source(s), name("sex"), unit.category())
  GUIDE: axis(dim(1), label("mea_perk"))
  GUIDE: axis(dim(2), label("msg_total_interaction_prop"))
  GUIDE: legend(aesthetic(aesthetic.color.interior), label("sex"))
  GUIDE: text.title(label("Scatter Plot of msg_total_interaction_prop by mea_perk by sex"))
  ELEMENT: point(position(mea_perk*msg_total_interaction_prop), color.interior(sex))
END GPL.

GGRAPH
  /GRAPHDATASET NAME="graphdataset" VARIABLES=vmh_perk msg_total_interaction_prop sex MISSING=LISTWISE 
    REPORTMISSING=NO
  /GRAPHSPEC SOURCE=INLINE
  /FITLINE TOTAL=YES SUBGROUP=NO.
BEGIN GPL
  SOURCE: s=userSource(id("graphdataset"))
  DATA: vmh_perk=col(source(s), name("vmh_perk"))
  DATA: msg_total_interaction_prop=col(source(s), name("msg_total_interaction_prop"))
  DATA: sex=col(source(s), name("sex"), unit.category())
  GUIDE: axis(dim(1), label("vmh_perk"))
  GUIDE: axis(dim(2), label("msg_total_interaction_prop"))
  GUIDE: legend(aesthetic(aesthetic.color.interior), label("sex"))
  GUIDE: text.title(label("Scatter Plot of msg_total_interaction_prop by vmh_perk by sex"))
  ELEMENT: point(position(vmh_perk*msg_total_interaction_prop), color.interior(sex))
END GPL.









GLM ssb_total_aggression_prop osb_total_aggression_prop BY sex treatment
  /WSFACTOR=ssborosb_agg 2 Polynomial 
  /METHOD=SSTYPE(3)
  /PLOT=PROFILE(sex) TYPE=BAR ERRORBAR=NO MEANREFERENCE=NO
  /CRITERIA=ALPHA(.05)
  /WSDESIGN=ssborosb_agg 
  /DESIGN=sex treatment sex*treatment.

GLM ssb_total_prosocial_prop osb_total_prosocial_prop BY sex treatment
  /WSFACTOR=ssborosb_prosoc 2 Polynomial 
  /METHOD=SSTYPE(3)
  /PLOT=PROFILE(sex) TYPE=BAR ERRORBAR=NO MEANREFERENCE=NO
  /CRITERIA=ALPHA(.05)
  /WSDESIGN=ssborosb_prosoc 
  /DESIGN=sex treatment sex*treatment.




DATASET ACTIVATE DataSet1.
GLM of_lower_middle_prop nor_lower_middle_prop
  /WSFACTOR=phase 2 Polynomial 
  /MEASURE=prop_lower_middle 
  /METHOD=SSTYPE(3)
  /PLOT=PROFILE(phase) TYPE=LINE ERRORBAR=NO MEANREFERENCE=NO YAXIS=AUTO
  /EMMEANS=TABLES(phase) COMPARE ADJ(LSD)
  /PRINT=DESCRIPTIVE ETASQ 
  /CRITERIA=ALPHA(.05)
  /WSDESIGN=phase.
