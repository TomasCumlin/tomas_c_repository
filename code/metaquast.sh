#!/bin/bash -l

#SBATCH -A g2021012
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 01:00:00
#SBATCH -J metaquast
#SBATCH --mail-type=ALL
#SBATCH --mail-user tomas.cumlin.1485@student.uu.se

# Load modules
module load bioinfo-tools
module load quast

# Your commands
metaquast.py /home/tomasc/genome_analysis_2021/analysis/final.contigs.fa -o /home/tomasc/genome_analysis_2021/analysis/metaquast -t 2 -1 /home/tomasc/genome_analysis_2021/tomas_c_repository/data/dna_data/*_1.paired.trimmed.fastq.gz -2 /home/tomasc/genome_analysis_2021/tomas_c_repository/data/dna_data/*_2.paired.trimmed.fastq.gz
