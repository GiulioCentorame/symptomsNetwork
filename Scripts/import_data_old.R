########################################
###                                  ###
### Data importing script - 06/06/19 ###
###                                  ###
########################################

                                        # Set wd for here
library(here)

                                        # Load dependencies
library(vroom)

                                        # Import data file
rawData <- vroom::vroom(
  here("Data",
    "ukb.first.dataset.txt"
  ),
                        col_names = TRUE,
                        col_types = rep(cols("i"), 113),
                        delim = " ", # Yes, it's a space
                        na = c("NA", "UN", "DA", "999"),
                        progress = TRUE
                        )



type_convert(rawData,
             col_types = cols("d"), na = c("NA"), trim_ws = TRUE,
  locale = default_locale())


                                        # Save data in rawData.rds

saveRDS(rawData, here("Data",
                      "rawData.rds"
                      )
        )
