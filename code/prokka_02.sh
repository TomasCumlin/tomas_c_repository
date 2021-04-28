#!/bin/bash -l
#SBATCH -A g2021012
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 01:30:00
#SBATCH -J prokka_01
#SBATCH --mail-type=ALL
#SBATCH --mail-user tomas.cumlin.1485@student.uu.se

# Load modules
module load bioinfo-tools
module load prokka

# Your commands

prokka --outdir /home/tomasc/genome_analysis_2021/analysis/prokka/p02 --metagenome --prefix binning_2 /home/tomasc/genome_analysis_2021/analysis/binning/binning_2.fa
prokka --outdir /home/tomasc/genome_analysis_2021/analysis/prokka/p03 --metagenome --prefix binning_3 /home/tomasc/genome_analysis_2021/analysis/binning/binning_3.fa
prokka --outdir /home/tomasc/genome_analysis_2021/analysis/prokka/p05 --metagenome --prefix binning_5 /home/tomasc/genome_analysis_2021/analysis/binning/binning_5.fa
prokka --outdir /home/tomasc/genome_analysis_2021/analysis/prokka/p08 --metagenome --prefix binning_8 /home/tomasc/genome_analysis_2021/analysis/binning/binning_8.fa
prokka --outdir /home/tomasc/genome_analysis_2021/analysis/prokka/p11 --metagenome --prefix binning_11 /home/tomasc/genome_analysis_2021/analysis/binning/binning_11.fa
prokka --outdir /home/tomasc/genome_analysis_2021/analysis/prokka/p12 --metagenome --prefix binning_12 /home/tomasc/genome_analysis_2021/analysis/binning/binning_12.fa
prokka --outdir /home/tomasc/genome_analysis_2021/analysis/prokka/p15 --metagenome --prefix binning_15 /home/tomasc/genome_analysis_2021/analysis/binning/binning_15.fa
prokka --outdir /home/tomasc/genome_analysis_2021/analysis/prokka/p16 --metagenome --prefix binning_16 /home/tomasc/genome_analysis_2021/analysis/binning/binning_16.fa
prokka --kingdom Archaea --outdir /home/tomasc/genome_analysis_2021/analysis/prokka/p18 --metagenome --prefix binning_18 /home/tomasc/genome_analysis_2021/analysis/binning/binning_18.fa
prokka --outdir /home/tomasc/genome_analysis_2021/analysis/prokka/p20 --metagenome --prefix binning_20 /home/tomasc/genome_analysis_2021/analysis/binning/binning_20.fa
prokka --outdir /home/tomasc/genome_analysis_2021/analysis/prokka/p23 --metagenome --prefix binning_23 /home/tomasc/genome_analysis_2021/analysis/binning/binning_23.fa
prokka --outdir /home/tomasc/genome_analysis_2021/analysis/prokka/p25 --metagenome --prefix binning_25 /home/tomasc/genome_analysis_2021/analysis/binning/binning_25.fa
prokka --outdir /home/tomasc/genome_analysis_2021/analysis/prokka/p26 --metagenome --prefix binning_26 /home/tomasc/genome_analysis_2021/analysis/binning/binning_26.fa
