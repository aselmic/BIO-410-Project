to_aass<-function(x){
  paste(getSequence(x), collapse='')}
data_as<-as(vapply(data, to_aass, character(1)),"AAStringSet")
baddie_align_subset <- msa(data_as, method = "ClustalW")
baddies_seqinr<-msaConvert(baddies_align_subset,type="seqinr::alignment")
View(baddie_align_subset)
baddie_seqinr<-msaConvert(baddie_align_subset,type="seqinr::alignment")
baddie_dist<-dist.alignment(baddie_seqinr, matrix="identity")
njtree=nj(baddie_dist)
plot(njtree)
plot(njtree)
save.image("~/the thing/Baddie.RData")
njtree$tip.labels
njtree$tip.label
newnames<-c("Toxoplasma gondii","Cyclospora cayetanensis","Plasmodium falciparum","Babesia bovis","Plasmodium vivax")
njtree$tip.label<-newnames
plotnj(njtree)
library(ape)
plotnj(njtree)
plot(njtree,type="unrooted")
save.image("~/the thing/Baddie2.RData")
