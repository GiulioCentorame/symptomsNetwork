#!/bin/bash

#$ -S /bin/bash
#$ -N NetworkEstimation
#$ -j n
#$ -cwd
#$ -M giulio.centorame@kcl.ac.uk
#$ -m be
#$ -l h_vmem=20G
#$ -q HighMemLongterm.q,LowMemLongterm.q,HighMemShortterm.q,LowMemShortterm.q
#$ -pe smp 2

# Set the number of available cores
export MKL_NUM_THREADS=20
export NUMEXPR_NUM_THREADS=20
export OMP_NUM_THREADS=20


# Add dependencies

module add general/R/3.5.0
module add compilers/gcc/8.1.0

# Run script

Rscript ~/myLustre/Scripts/estimate_network.R
