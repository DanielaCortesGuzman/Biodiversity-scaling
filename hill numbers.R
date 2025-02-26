
library(hillR)
library(ape)
library(phytools)

phy.tree<-read.nexus(file.choose(), tree.names = NULL, force.multi = FALSE) # output.nex
consensus.tree<-consensus(phy.tree, p = 0.5, check.labels = TRUE, rooted = TRUE)
t1<-consensus.edges(phy.tree)

hill_phylo(comm, t1, q = 0)
hill_phylo_parti(comm, t1, q = 0)

