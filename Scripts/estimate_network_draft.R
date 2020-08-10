##################################
###                            ###
### Computing graph - 04/07/19 ###
###                            ###
##################################

## Set Seed
###########

set.seed(711)

## Load dependencies
####################

library("bootnet")
library("qgraph")
library("IsingFit")
library("tidyr")

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

networkSet2 <-
    readRDS(
        here(
            "Data",
            "networkSet2.rds"
        )
    )

## Check assumptions
####################

## Saves an assumption report           

# TODO: recall of file with assumptions

## Compute networks

### N1

n1 <- estimateNetwork(networkSet1,
                      default            = "EBICglasso",
                      corMethod          = "cor_auto",
                      missing            = "listwise", 
                      verbose            = TRUE,
                      lambda.min.ratio   = 0.0001,
                      refit              = TRUE,
                      principalDirection = TRUE,
                      nlambda            = 100000,
                      threshold          = TRUE
                      )

## Plot graph without clustering
################################

pdf(here("Reports", "graph_complete_set1_cor_auto.pdf"))

qgraph(
  n1$graph,
  layout = "spring"
)

dev.off()

## Save centrality plot

pdf(here("Reports", "cent_plot_set1_cor_auto.pdf"))

centralityPlot(n1,
               include = "all")

dev.off()

## Clustering plot 

pdf(here("Reports", "clust_plot_set1.pdf"))

clusteringPlot(n1,
               include = "all")

dev.off()

### N2

n2 <- estimateNetwork(networkSet2,
                      default = "EBICglasso",
                      corMethod = "cor_auto",
                      #refit = TRUE,
                      missing = "pairwise", 
                      verbose = TRUE,
                     # lambda.min.ratio = 0.00000000000000000000001,
                     lambda.min.ratio = 0.0001,
                     nlambda = 100000,
                      threshold = TRUE
                      )

if(FALSE) {
  n2 <- bootnet_ggmModSelect(networkSet2,
                           tuning = 0.5, 
                           corMethod = "cor_auto",
                           missing = "pairwise", 
                           sampleSize = "maximum", 
                           verbose = TRUE,
                           principalDirection = TRUE, 
                           start = "glasso", 
                           stepwise = FALSE, 
                           nCores = 20)
}





## Plot graph
#############

pdf(here("Reports", "graph_complete_set2.pdf"))

qgraph(
  n2$graph,
  layout = "spring"
)

dev.off()

## Save centrality plot

pdf(here("Reports", "cent_plot_set2.pdf"))


centralityPlot(n2)

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
  n2,
  here(
    "Data",
    "network_set2.rds"
  )
)






#######
# EOF #
#######
