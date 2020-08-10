#!/bin/bash

#$ -S /bin/bash
#$ -N DatasetExtraction
#$ -l h_vmem=10G
#$ -q HighMemLongterm.q,LowMemLongterm.q,HighMemShortterm.q,LowMemShortterm.q
#$ -pe smp 2

# Add dependencies

module add general/perl/5.22.0

# Create outputs

#touch /mnt/lustre/groups/ukbiobank/Edinburgh_Data/usr/Giulio/Data/ukb.first.dataset.txt

# Extract columns for analysis

perl /mnt/lustre/groups/ukbiobank/KCL_Data/Scripts/kcl_ukbb_scripts/bin/Run_PERL_Extract_Named_Columns_JRIC_010916.sh \
     /mnt/lustre/groups/ukbiobank/ukb18177_glanville/phenotypes/ukb18177_glanville_phenotypes.txt \
     /mnt/lustre/groups/ukbiobank/Edinburgh_Data/usr/Giulio/Variables/ukb.field.names.txt \
     /mnt/lustre/groups/ukbiobank/Edinburgh_Data/usr/Giulio/Data/ukb.first.dataset.txt \
     /mnt/lustre/groups/ukbiobank/Edinburgh_Data/usr/Giulio/Variables/ukb.new.field.names.txt
