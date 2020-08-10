#---------------------------#
#     Check assumptions     # Fab script dated 7/08/2019
#---------------------------# Author: Giulio Centorame

set.seed(7)

#### PACKAGES & DATASETS ####

# Packages

library(tidyverse)
library(here)
library(networktools)
library(missForest)

# Datasets

networkMatrixCont <-
    readRDS(
        here(
            "Data",
            "networkSet_cont_nofullmissing.rds"
        )
    )

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

#### Check for collinear variables in the full data ####

# First check using Hittner (2003) for computing means

collVariablesH_full <- 
  goldbricker(
    networkMatrixCont,
    p = 0.05,
    method = "hittner2003",
    threshold = 0.25,
    corMin = 0.5,
    progressbar = TRUE
  )


# We are going to apply Zou (2007)'s CI in the two
# correlation coefficient. The advantage of this method
# is that it allows us to use CI over p-values

collVariablesZ_full <- 
  goldbricker(
    networkMatrixCont,
    method = "zou2007", # See above
    threshold = 0.25,
    corMin = 0.5,
    progressbar = TRUE
  )

# Print results 

dir.create(here("Reports"))

file.create(here("Reports", "collinearity_full.txt"))

sink(
  here(
    "Reports",
    "collinearity_full.txt"
  ),
  append = TRUE
)

cat("Collinearity report: \n")
cat("-------------------- \n")
cat("###### Hittner (2003) ###### \n")

print(collVariablesH)

cat("###### Zou (2007) ###### \n")

print(collVariablesZ)

sink()


#### Check for collinearity in the 1st dataset ####

# First check using Hittner (2003) for computing means

collVariablesH_set1 <- 
  goldbricker(
    networkSet1,
    p = 0.05,
    method = "hittner2003",
    threshold = 0.25,
    corMin = 0.5,
    progressbar = TRUE
  )


# We are going to apply Zou (2007)'s CI in the two
# correlation coefficient. The advantage of this method
# is that it allows us to use CI over p-values

collVariablesZ_set1 <- 
  goldbricker(
    networkSet1,
    method = "zou2007", # See above
    threshold = 0.25,
    corMin = 0.5,
    progressbar = TRUE
  )

# Print results 

dir.create(here("Reports"))

file.create(here("Reports", "collinearity_networkSet1.txt"))

sink(
  here(
    "Reports",
    "collinearity_networkSet1.txt"
  ),
  append = TRUE
)

cat("Collinearity report: networkSet1 \n")
cat("-------------------- \n")
cat("###### Hittner (2003) ###### \n")

print(collVariablesH_set1)

cat("###### Zou (2007) ###### \n")

print(collVariablesZ_set1)

sink()

#### Check for collinearity in the 2nd dataset ####

# First check using Hittner (2003) for computing means

collVariablesH_set2 <- 
  goldbricker(
    networkSet2,
    p = 0.05,
    method = "hittner2003",
    threshold = 0.25,
    corMin = 0.5,
    progressbar = TRUE
  )


# We are going to apply Zou (2007)'s CI in the two
# correlation coefficient. The advantage of this method
# is that it allows us to use CI over p-values

collVariablesZ_set2 <- 
  goldbricker(
    networkSet2,
    method = "zou2007", # See above
    threshold = 0.25,
    corMin = 0.5,
    progressbar = TRUE
  )

# Print results 

dir.create(here("Reports"))

file.create(here("Reports", "collinearity_networkSet2.txt"))

sink(
  here(
    "Reports",
    "collinearity_networkSet2.txt"
  ),
  append = TRUE
)

cat("Collinearity report: networkSet2 \n")
cat("-------------------- \n")
cat("###### Hittner (2003) ###### \n")

print(collVariablesH_set2)

cat("###### Zou (2007) ###### \n")

print(collVariablesZ_set2)

sink()


#######
# EOF #
#######