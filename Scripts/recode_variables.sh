#!/bin/bash

#$ -S /bin/bash
#$ -N DatasetCleaning
#$ -j n
#$ -cwd
#$ -M giulio.centorame@kcl.ac.uk
#$ -m be
#$ -l h_vmem=10G
#$ -q HighMemLongterm.q,LowMemLongterm.q,HighMemShortterm.q,LowMemShortterm.q
#$ -pe smp 2

# Set the number of available cores
export MKL_NUM_THREADS=10
export NUMEXPR_NUM_THREADS=10
export OMP_NUM_THREADS=10

# Add dependencies

module add general/R/3.5.0
module add compilers/gcc/8.1.0

# Run script

Rscript ~/myLustre/Scripts/recode_variables.R
Rscript ~/myLustre/Scripts/recode_variables_2.R