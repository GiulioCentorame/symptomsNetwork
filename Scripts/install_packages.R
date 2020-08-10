###########################
### INSTALLING PACKAGES ###
###########################

                                        #Install glue
install.packages("glue",
                 repos = "https://cran.ma.imperial.ac.uk/"
                 )

                                        #Install devtools
install.packages("devtools",
                 repos = "https://cran.ma.imperial.ac.uk/"
                 )


                                        # Load devtools
library(devtools)

                                        # Install xfun package from GitHub
install_github("yihui/xfun")
# Install other dependencies that God only knows why are troublesome
install.packages("htmlTable",
                 repos = "https://cran.ma.imperial.ac.uk/"
                 )
install.packages("stringi",
                 repos = "https://cran.ma.imperial.ac.uk/"
                 )
install.packages("Hmisc",
                 repos = "https://cran.ma.imperial.ac.uk/"
                 )
                                        # Install qgraph (FINALLY)
install.packages("qgraph",
                 repos = "https://cran.ma.imperial.ac.uk/"
                 )

                                        # Install vroom (to optimise computation)
install.packages("vroom",
                 repos = "https://cran.ma.imperial.ac.uk/"
                 )

                                        # Install here (to make filepaths less painful)

install.packages("here",
                 repos = "https://cran.ma.imperial.ac.uk/"
                 )

                                        # Install tidyverse
install.packages("tidyverse",
                 repos = "https://cran.ma.imperial.ac.uk/"
                 )

install.packages("bootnet")
