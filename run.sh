#!/bin/bash

cd Scripts

# Run package installation scripts, for packages that usually cause troubles
# when installed as dependencies.

Rscript install_packages.R

# This script imports the dataset as an R object
Rscript import_data.R

# Long script of variable recoding

Rscript recode_variables.R
Rscript recode_variables_2.R

# Assumptions check

Rscript check_assumptons.R

# Calculate and output results

Rscript estimate_network.R

#######
# EOF #
#######