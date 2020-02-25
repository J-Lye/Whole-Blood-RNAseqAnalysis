#!/bin/bash
#PBS -N HTS_RC
#PBS -l walltime=5:00:00
#PBS -l nodes=1:ppn=16

cd $PBS_O_WORKDIR
module load biobuilds/2017.11
mkdir hg38_index
STAR --runThreadN 16 \
--runMode genomeGenerate mode \
--genomeDir /scratch/jl5e18/RNA_SEQ/PIDproject/Novogene/genomedirgencodev30/ \
--genomeFastaFiles /scratch/groups/BWW/Resources/Human/Build38/GRCh38.primary_assembly.genome.fa \
--sjdbGTFfile /scratch/groups/BWW/Resources/Human/Build38/gencode.v30.annotation.gtf \
--sjdbOverhang 149 