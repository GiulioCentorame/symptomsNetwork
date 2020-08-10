# Network of self-reported symptoms in the UK Biobank

This scripts reproduces the analysis conducted for my MSc dissertation.
It is far from ideal and I am not sure of the reproducibility (it does need a bit of work), but as I am writing this, I do not have access to the facilities to experiment with the code flow and optimisation. Hence, consider it is UNTESTED (as of 10/08/20) and might not be viable for the most recent version of the UK Biobank. 

(In all fairness, I barely knew how to write reproducible code back then)(And I was late for the deadline)

## Prerequisites
The original script ran on an HPC running Sun Grid Engine (KCL's Rosalind).
Since that would make it virtually impossible to reproduce without having the same scheduling system, I have made a script to reproduce the main steps in any Linux-based HPC running bash. It is always possible to reproduce the original test 
Either way, it assumes:

+ a UK Biobank dataset on your machine with the right field names (I will provide an extraction script in the future);
+ R 3.5.0;
+ gcc 8.1.0+ (due to some R packages that are incompatible with previous versions)

## How to run

``` sh
./run.sh
```

## TODO

+ Fix file naming system (my past self had no idea of conventions and did not number them)
+ Optimise data recoding script.
