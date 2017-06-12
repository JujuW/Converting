# from genalex to genind
library(popprxl)
(gg13 <- read.genalexcel("MPB_GG_no LD_no HWE loci_27 pops.xlsx", genclone=FALSE))

head(gg13@tab)[1:6,1:10]

source("genind2structure.R")
genind2structure(gg13,"gg13.stru",pops=TRUE)

######
x <- as.loci(hybrid.df) ###CONVERSION OF GENIND OBJECT TO LOCI OBJECT####
write.loci(x, file = "project_data", loci.sep ="\t", quote = FALSE,
           allele.sep ="\t", na ="-9\t-9", col.names = FALSE)

read.structure("gg13.stru")
