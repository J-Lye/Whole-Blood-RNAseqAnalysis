#!/bin/bash
#PBS -N jltrim76
#PBS -l walltime=4:00:00
#PBS -l nodes=1:ppn=16

module load biobuilds/2017.11


## Names of fq files and location in filestore
fq1="/scratch/jl5e18/RNA_SEQ/PIDproject/Novogene/X201SC19071128-Z01-F001/raw_data/JLcontrol_1.fq.gz"
fq2="/scratch/jl5e18/RNA_SEQ/PIDproject/Novogene/X201SC19071128-Z01-F001/raw_data/JLcontrol_2.fq.gz"
O1="/scratch/jl5e18/RNA_SEQ/PIDproject/Novogene/X201SC19071128-Z01-F001/raw_data/jlreanalyse/JL76_1.Ptrim.fq.gz"
O2="/scratch/jl5e18/RNA_SEQ/PIDproject/Novogene/X201SC19071128-Z01-F001/raw_data/jlreanalyse/JL76_1.Utrim.fq.gz"
O3="/scratch/jl5e18/RNA_SEQ/PIDproject/Novogene/X201SC19071128-Z01-F001/raw_data/jlreanalyse/JL76_2.Ptrim.fq.gz"
O4="/scratch/jl5e18/RNA_SEQ/PIDproject/Novogene/X201SC19071128-Z01-F001/raw_data/jlreanalyse/JL67_2.Utrim.fq.gz"

## Trimmomatic v0.3.6 via biobuilds/2017.11
trimmomatic PE $fq1 $fq2 $O1 $O2 $O3 $O4 ILLUMINACLIP:"/scratch/jl5e18/RNA_SEQ/PIDproject/Novogene/X201SC19071128-Z01-F001/raw_data/Novoadap.fa":2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36 CROP:76

