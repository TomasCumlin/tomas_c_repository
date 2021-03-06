#!/bin/bash -l

#SBATCH -A g2021012
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 02:00:00
#SBATCH -J metaquast_new
#SBATCH --mail-type=ALL
#SBATCH --mail-user tomas.cumlin.1485@student.uu.se

# Load modules
module load bioinfo-tools
module load quast

# Your commands
metaquast.py -t 2 /home/tomasc/genome_analysis_2021/analysis/final.contigs.fa -o /home/tomasc/genome_analysis_2021/analysis/metaquast
