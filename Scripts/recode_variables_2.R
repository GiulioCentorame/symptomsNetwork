##########################
### RECODE VARIABLES 2 ###
##########################

##### DEPENDENCIES #####

library(here)

##### Create subsets of the dataset #####

# Read main file

networkMatrix <-    
    readRDS(
        here(
            "Data",
            "networkSet_cont_nofullmissing.rds"
        )
    )

# 1st Network

set1 <- 
  c(           # List variables for 1st network (upper)
    scan(
        here("Variables", "set1.txt"),
        "character"
        )
    )

networkSet1 <- networkMatrix[,set1]

saveRDS(
  networkSet1,
  here(
    "Data",
    "networkSet1.rds"
  )
)

# 2nd network

set2 <- c(          # List variables for 2nd network (lower)
    scan(
        here(
            "Variables",
            "set2.txt"
             ),
        "character"
        )
)

networkSet2 <- networkMatrix[,set2]

saveRDS(
  networkSet2,
  here(
    "Data",
    "networkSet2.rds"
  )
)
