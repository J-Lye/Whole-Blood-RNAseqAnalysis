#!/bin/bash
#PBS -N Staralignjl75bpv2
#PBS -l walltime=5:00:00
#PBS -l nodes=1:ppn=16
cd $PBS_O_WORKDIR


STAR --runThreadN 16 --readFilesIn /scratch/jl5e18/RNA_SEQ/PIDproject/Novogene/WholeBlood/raw_data/jlreanalyse/jlcontrol75bp1.fq /scratch/jl5e18/RNA_SEQ/PIDproject/Novogene/WholeBlood/raw_data/jlreanalyse/jlcontrol75bp2.fq \
--genomeDir /scratch/jl5e18/RNA_SEQ/SplicingandDisease/sot70/hg38_index/ --twopassMode Basic --twopass1readsN -1 --outSAMmapqUnique 60 --outFilterType BySJout --outFilterMultimapNmax 20 \
--alignSJoverhangMin 8 --alignSJDBoverhangMin 1 --outFilterMismatchNmax 999 --outFilterMismatchNoverReadLmax 0.04 --alignIntronMin 20 --alignIntronMax 1000000 \
--alignMatesGapMax 1000000 --quantMode TranscriptomeSAM GeneCounts --outReadsUnmapped Fastx --outSAMtype BAM Unsorted