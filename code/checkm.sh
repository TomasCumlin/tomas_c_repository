#!/bin/bash -l
#SBATCH -A g2021012
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 4
#SBATCH -t 04:00:00
#SBATCH -J checkm
#SBATCH --mail-type=ALL
#SBATCH --mail-user tomas.cumlin.1485@student.uu.se
# Load modules
module load bioinfo-tools
module load CheckM
# Your commands


checkm lineage_wf -t 4 -x fa --reduced_tree /home/tomasc/genome_analysis_2021/analysis/binning /home/tomasc/genome_analysis_2021/analysis/checkm
