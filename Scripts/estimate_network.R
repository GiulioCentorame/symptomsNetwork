##################################
###                            ###
### Computing graph - 04/07/19 ###
###                            ###
##################################

#### Set Seed ####
##################

set.seed(711)

## Load dependencies
####################

library("bootnet")
library("qgraph")
library("IsingFit")
library("tidyr")
library("Hmisc")
                                        # Set wd

library(here)

## Import files
###############

networkSet1 <-
    readRDS(
        here(
            "Data",
            "networkSet1.rds"
        )
    )



#### Compute networks ####
##########################


### N1

n1 <- estimateNetwork(networkSet1,
                      default            = "EBICglasso",
                      corMethod          = "cor_auto",
                      missing            = "listwise", 
                      verbose            = TRUE,
                      lambda.min.ratio   = 0.0001,
                      principalDirection = TRUE,
                      nlambda            = 100000,
                      threshold          = TRUE
                      )

## Plot graph 
#############

nNames <- c(scan(here("Variables", "nodeNames.txt"),
                 "character"
                 )
            )

png(here("Reports", "graph_complete_set1_cor_auto.png"),
     units="in", 
     width=10, 
     height=5, 
     res=300
     )

par(mar=c(5,3,2,2)+0.1)

qgraph(n1$graph,
       layout    = "spring",
       legend    = TRUE,
       nodeNames = nNames
       )

dev.off()


##### Different method: parametric


n1_2 <- estimateNetwork(networkSet1,
                      default            = "EBICglasso",
                      corMethod          = "cor",
                      missing            = "listwise", 
                      verbose            = TRUE,
                      lambda.min.ratio   = 0.00000000000001,
                      principalDirection = TRUE,
                      nlambda            = 100000,
                      threshold          = TRUE
)


png(here("Reports", "graph_complete_set1_cor_cor.png"),
     units="in", width=10, height=5, res=300)

par(mar=c(5,3,2,2)+0.1)

qgraph(n1_2$graph,
       layout    = "spring",
       legend    = TRUE,
       nodeNames = nNames
       )

dev.off()

## Save output file

saveRDS(
  n1,
  here(
    "Data",
    "network_set1.rds"
  )
)

saveRDS(
  n1_2,
  here(
    "Data",
    "network_set1_2.rds"
  )
)

###################################
#### Second version: merge dep ####
###################################

## Make another table
networkSet2_full <- networkSet1
networkSet2_noDep <- networkSet1[,3:15]
networkSet2_full$DepressionSymptoms <- networkSet1[,1] + networkSet1[,2]

networkSet2 <- 
  cbind(networkSet2_full$DepressionSymptoms,
        networkSet2_noDep)

colnames(networkSet2) <- c("DepressionSymptoms", 
                           colnames(networkSet2_noDep)
                           )


#### Compute networks ####
##########################


### N12

n12 <- estimateNetwork(networkSet2,
                      default            = "EBICglasso",
                      corMethod          = "cor_auto",
                      missing            = "listwise", 
                      verbose            = TRUE,
                      lambda.min.ratio   = 0.0001,
                      principalDirection = TRUE,
                      nlambda            = 100000,
                      threshold          = TRUE
)


n12_2 <- estimateNetwork(networkSet2,
                       default            = "EBICglasso",
                       corMethod          = "cor",
                       missing            = "listwise", 
                       verbose            = TRUE,
                       lambda.min.ratio   = 0.0001,
                       principalDirection = TRUE,
                       nlambda            = 100000,
                       threshold          = TRUE
)



## Plot graph 
#############

nNames2 <- c(scan(here("Variables", "nodeNames_2.txt"),
                 "character"
)
)

png(here("Reports", "graph_complete_set12_cor_auto.png"),
     units="in", width=5, height=5, res=300)

par(mar=c(5,3,2,2)+0.1)

qgraph(n12$graph,
       layout    = "spring",
       legend    = TRUE,
       nodeNames = nNames2
)

dev.off()


png(here("Reports", "graph_complete_set12_cor_cor.png"),
     units="in", width=5, height=5, res=300)

par(mar=c(5,3,2,2)+0.1)

qgraph(n12_2$graph,
       layout    = "spring",
       legend    = TRUE,
       nodeNames = nNames2
)

dev.off()


###################################################
#### Third version: merge dep, merge self harm ####
###################################################

## Make another table
networkSet3_full <- networkSet2    #copy df

networkSet3_noSH <- networkSet2[,c(1:10, 14)]    #separate all other vars

networkSet3_full$WorthlessnessAndSH <- 
  networkSet2[,11] + networkSet2[,12] + networkSet2[,13]

networkSet3 <- 
  cbind(networkSet3_full$WorthlessnessAndSH,
        networkSet3_noSH)

colnames(networkSet3) <- c("WorthlessnessAndSH", 
                           colnames(networkSet3_noSH)
                            )


#### Compute networks ####
##########################


### N13

n13 <- estimateNetwork(networkSet3,
                       default            = "EBICglasso",
                       corMethod          = "cor_auto",
                       missing            = "listwise", 
                       verbose            = TRUE,
                       lambda.min.ratio   = 0.0001,
                       principalDirection = TRUE,
                       nlambda            = 100000,
                       threshold          = TRUE
)

n13_2 <- estimateNetwork(networkSet3,
                       default            = "EBICglasso",
                       corMethod          = "cor",
                       missing            = "listwise", 
                       verbose            = TRUE,
                       lambda.min.ratio   = 0.0001,
                       principalDirection = TRUE,
                       nlambda            = 100000,
                       threshold          = TRUE
)



## Save centrality plot

png(here("Reports", "cent_plot_set13_cor_cor.png"),
     units="in", width=5, height=5, res=300)

par(mar=c(5,3,2,2)+0.1)

centralityPlot(n13_2,
               include    = "all",
               decreasing = TRUE
)

dev.off()



#########################################################
#### Fourth version: merge dep, self harm, psychosis ####
#########################################################

## Make another table
networkSet4_full <- networkSet3    #copy df

networkSet4_noPsy <- networkSet3[,c(1:7, 12)]    #separate all other vars

networkSet4_full$PsychoticSymptoms <- 
  networkSet3[,8] + networkSet3[,9] + networkSet3[,10] + networkSet3[,11]

networkSet4 <- 
  cbind(networkSet4_full$PsychoticSymptoms,
        networkSet4_noPsy)

colnames(networkSet4) <- c("PsychoticSymptoms", 
                           colnames(networkSet4_noPsy)
)

#### Compute networks ####
##########################


### N14

n14 <- estimateNetwork(networkSet4,
                       default            = "EBICglasso",
                       corMethod          = "cor_auto",
                       missing            = "listwise", 
                       verbose            = TRUE,
                       lambda.min.ratio   = 0.000000000001,
                       principalDirection = TRUE,
                       nlambda            = 100000,
                       threshold          = TRUE
)

n14_2 <- estimateNetwork(networkSet4,
                         default            = "EBICglasso",
                         corMethod          = "cor",
                         missing            = "listwise", 
                         verbose            = TRUE,
                         lambda.min.ratio   = 0.000000000001,
                         principalDirection = TRUE,
                         nlambda            = 100000,
                         threshold          = TRUE,
)




## Plot graph 
#############

nNames4 <- c(scan(here("Variables", "nodeNames_4.txt"),
                  "character"
)
)

png(here("Reports", "graph_complete_set14_cor_auto.png"),
     units="in", width=5, height=5, res=300)

par(mar=c(5,3,2,2)+0.1)

qgraph(n14$graph,
       layout    = "spring",
       legend    = TRUE,
       nodeNames = nNames4
)

dev.off()

####


png(here("Reports", "graph_complete_set14_cor_cor.png"),
     units="in", width=5, height=5, res=300)

par(mar=c(5,3,2,2)+0.1)

qgraph(n14_2$graph,
       layout    = "spring",
       legend    = TRUE,
       nodeNames = nNames4
)

dev.off()


# Tune gamma
############

png(here("Reports", "tuning.png"),width=1000,height=640)

par(mar=c(5,3,2,2)+0.1)

layout(rbind(1:5,6:10))

qgraph(n13_2$graph,
       layout    = "spring",
       legend    = FALSE,
       tuning = 0
)

qgraph(n13_2$graph,
       layout    = "spring",
       legend    = FALSE,
       tuning = 0.10
)
qgraph(n13_2$graph,
       layout    = "spring",
       legend    = FALSE,
       tuning = 0.15
)
qgraph(n13_2$graph,
       layout    = "spring",
       legend    = FALSE,
       tuning = 0.20
)
qgraph(n13_2$graph,
       layout    = "spring",
       legend    = FALSE,
       tuning = 0.25
)
qgraph(n13_2$graph,
       layout    = "spring",
       legend    = FALSE,
       tuning = 0.30
)
qgraph(n13_2$graph,
       layout    = "spring",
       legend    = FALSE,
       tuning = .35
)
qgraph(n13_2$graph,
       layout    = "spring",
       legend    = FALSE,
       tuning = .40
)
qgraph(n13_2$graph,
       layout    = "spring",
       legend    = FALSE,
       tuning = .45
)
qgraph(n13_2$graph,
       layout    = "spring",
       legend    = FALSE,
       tuning = 0.5
)

dev.off()


### Bootstrapping
#################

### Nonparametric bootstrap ###

# at your own risk

boot1 <- bootnet(networkSet3, 
                 nCores = 15,
                 nBoots = 1000,
                 type = "nonparametric",
                 default            = "EBICglasso",
                 corMethod          = "cor",
                 missing            = "listwise", 
                 verbose            = TRUE,
                 lambda.min.ratio   = 0.0001,
                 principalDirection = TRUE,
                 nlambda            = 100000,
                 threshold          = TRUE
                 )

# plot Bootstrapped edges' CI 

png(here("Reports", "edgeCI.png"),
     units="in", width=8, height=9, res=300)

par(mar=c(5,3,2,2)+0.1)

plot(boot1, 
     labels = FALSE, 
     order = "sample"
     )

dev.off()

# Quantile intervals when nonzero

png(here("Reports", "quantIntervals.png"),
     units="in", width=8, height=9, res=300)


par(mar=c(5,3,2,2)+0.1)

plot(boot1, 
     plot = "interval", 
     split0 = TRUE, 
     order="sample", 
     labels=FALSE
     )

dev.off()

# Plot significant differences of edges:

png(here("Reports", "sigDiffOnEdges.png"),
     units="in", width=10, height=8, res=300)

par(mar=c(5,3,2,2)+0.1)

plot(boot1, 
     "edge",
     plot = "difference",
     onlyNonZero = TRUE,
     order = "sample"
     ) 

dev.off()

# Plot significant differences of node strength:

png(here("Reports", "SigDiffNodeStrength.png"),
     units="in", width=5, height=5, res=300)

par(mar=c(5,3,2,2)+0.1)

plot(boot1,
     "strength",
     plot = "difference"
     )

dev.off()


# Test for difference in strength between node "A1" and "C2":
# TODO but not needed now

#differenceTest(Results,  "A1", "C2", "strength")

### Case-drop bootstrap ###

boot2 <- bootnet(networkSet3, 
                 nCores             = 15,
                 nBoots             = 1000,
                 type               = "case",
                 default            = "EBICglasso",
                 corMethod          = "cor",
                 missing            = "listwise", 
                 verbose            = TRUE,
                 lambda.min.ratio   = 0.0001,
                 principalDirection = TRUE,
                 nlambda            = 100000,
                 threshold          = TRUE,
                 caseMin            = 0.927, 
                 caseMax            = 1
                 )


# Plot centrality stability:

png(here("Reports", "centralityStability.png"),
     units="in", width=5, height=5, res=300)

par(mar=c(5,3,2,2)+0.1)

plot(boot2)

dev.off()

# Compute CS-coefficients:

corStability(boot2, cor = 0.7)

corStability(boot2, cor = 0.9)

#### PRODUCE DESCRIPTIVES ABOUT NETWORK ####
############################################

options(width = 1000)

sink(here("Reports", "Matrix.txt"))


print(n13_2$graph)

print(psych::describe(networkSet3))

print(Hmisc::describe(networkSet3))

print(psych::describe(na.omit(networkSet3)))

print(Hmisc::describe(na.omit(networkSet3)))

sink()

#######
# EOF #
#######