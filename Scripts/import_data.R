########################################
###                                  ###
### Data importing script - 06/06/19 ###
###                                  ###
########################################

## Dependency

library(tidyverse)
                                        # Set wd for here
library(here)

options(stringsAsFactors = FALSE)
                                        # Import data file
rawData <- read.table(
    here("Data",
         "ukb.first.dataset.txt"
         ),
    header = TRUE,
    sep = "",
    quote = "",
    dec = ".",
    na.strings = c("NA", "UN", "DA", 999, -818),
    colClasses = NA,   
    strip.white = TRUE,
    blank.lines.skip = TRUE,
    comment.char = ""
)

rawData[rawData < 0] <- NA

                                        # Save data in rawData.rds

saveRDS(rawData, here("Data",
                      "rawData.rds"
                      )
        )

#######
# EOF #
#######
