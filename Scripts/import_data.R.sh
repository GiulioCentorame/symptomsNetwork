#!/bin/bash

#$ -S /bin/bash
#$ -N DataImport
#$ -l h_vmem=10G
#$ -q HighMemLongterm.q,LowMemLongterm.q,HighMemShortterm.q,LowMemShortterm.q
#$ -pe smp 2

# Add dependencies

module add general/R/3.5.0
module add compilers/gcc/8.1.0

# Submit script

Rscript import_data.R
