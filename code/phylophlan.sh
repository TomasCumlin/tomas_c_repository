#!/bin/bash -l

#SBATCH -A g2021012
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 01:00:00
#SBATCH -J phylophlan
#SBATCH --mail-type=ALL
#SBATCH --mail-user tomas.cumlin.1485@student.uu.se

# Load modules
module load bioinfo-tools
# module load biopython
module load FastTree
module load muscle
module load usearch/5.2.32
module load python/2.7.11
module load phylophlan

# Your commands

ln -sf /sw/bioinfo/phylophlan/0.99/rackham/bin/data/*.bz2 /home/tomasc/genome_analysis_2021/analysis/phylophlan/outdir/data/
ln -sf /sw/bioinfo/phylophlan/0.99/rackham/bin/data/ppaalns/ppa.aln.tar.bz2 /home/tomasc/genome_analysis_2021/analysis/phylophlan/outdir/data/ppaalns/
ln -sf /sw/bioinfo/phylophlan/0.99/rackham/bin/data/ppafull.tax.txt /home/tomasc/genome_analysis_2021/analysis/outdir/data/
#ln -sf /sw/apps/bioinfo/phylophlan/0.99/rackham/bin/taxcuration/ /home/tomasc/genome_analysis_2021/analysis/phylophlan/taxcuration

cd /home/tomasc/genome_analysis_2021/analysis/phylophlan/outdir/

phylophlan.py -i metagenome -t --nproc 2
