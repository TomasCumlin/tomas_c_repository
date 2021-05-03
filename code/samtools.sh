#!/bin/bash -l
#SBATCH -A g2021012
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 01:30:00
#SBATCH -J samtools
#SBATCH --mail-type=ALL
#SBATCH --mail-user tomas.cumlin.1485@student.uu.se

# Load modules
module load bioinfo-tools
module load samtools

# Your commands

samtools view -S -b /home/tomasc/genome_analysis_2021/analysis/mapping/bin_2_37.sam -o /home/tomasc/genome_analysis_2021/analysis/mapping/bin_2_37.bam
samtools sort  /home/tomasc/genome_analysis_2021/analysis/mapping/bin_2_37.bam -o /home/tomasc/genome_analysis_2021/analysis/mapping/bin_2_37_sorted.bam

samtools view -S -b /home/tomasc/genome_analysis_2021/analysis/mapping/bin_2_39.sam -o /home/tomasc/genome_analysis_2021/analysis/mapping/bin_2_39.bam
samtools sort  /home/tomasc/genome_analysis_2021/analysis/mapping/bin_2_39.bam -o /home/tomasc/genome_analysis_2021/analysis/mapping/bin_2_39_sorted.bam


samtools view -S -b /home/tomasc/genome_analysis_2021/analysis/mapping/bin_3_37.sam -o /home/tomasc/genome_analysis_2021/analysis/mapping/bin_3_37.bam
samtools sort  /home/tomasc/genome_analysis_2021/analysis/mapping/bin_3_37.bam -o /home/tomasc/genome_analysis_2021/analysis/mapping/bin_3_37_sorted.bam

samtools view -S -b /home/tomasc/genome_analysis_2021/analysis/mapping/bin_3_39.sam -o /home/tomasc/genome_analysis_2021/analysis/mapping/bin_3_39.bam
samtools sort  /home/tomasc/genome_analysis_2021/analysis/mapping/bin_3_39.bam -o /home/tomasc/genome_analysis_2021/analysis/mapping/bin_3_39_sorted.bam


samtools view -S -b /home/tomasc/genome_analysis_2021/analysis/mapping/bin_5_37.sam -o /home/tomasc/genome_analysis_2021/analysis/mapping/bin_5_37.bam
samtools sort  /home/tomasc/genome_analysis_2021/analysis/mapping/bin_5_37.bam -o /home/tomasc/genome_analysis_2021/analysis/mapping/bin_5_37_sorted.bam

samtools view -S -b /home/tomasc/genome_analysis_2021/analysis/mapping/bin_5_39.sam -o /home/tomasc/genome_analysis_2021/analysis/mapping/bin_5_39.bam
samtools sort  /home/tomasc/genome_analysis_2021/analysis/mapping/bin_5_39.bam -o /home/tomasc/genome_analysis_2021/analysis/mapping/bin_5_39_sorted.bam


samtools view -S -b /home/tomasc/genome_analysis_2021/analysis/mapping/bin_8_37.sam -o /home/tomasc/genome_analysis_2021/analysis/mapping/bin_8_37.bam
samtools sort  /home/tomasc/genome_analysis_2021/analysis/mapping/bin_8_37.bam -o /home/tomasc/genome_analysis_2021/analysis/mapping/bin_8_37_sorted.bam

samtools view -S -b /home/tomasc/genome_analysis_2021/analysis/mapping/bin_8_39.sam -o /home/tomasc/genome_analysis_2021/analysis/mapping/bin_8_39.bam
samtools sort  /home/tomasc/genome_analysis_2021/analysis/mapping/bin_8_39.bam -o /home/tomasc/genome_analysis_2021/analysis/mapping/bin_8_39_sorted.bam


samtools view -S -b /home/tomasc/genome_analysis_2021/analysis/mapping/bin_11_37.sam -o /home/tomasc/genome_analysis_2021/analysis/mapping/bin_11_37.bam
samtools sort  /home/tomasc/genome_analysis_2021/analysis/mapping/bin_11_37.bam -o /home/tomasc/genome_analysis_2021/analysis/mapping/bin_11_37_sorted.bam

samtools view -S -b /home/tomasc/genome_analysis_2021/analysis/mapping/bin_11_39.sam -o /home/tomasc/genome_analysis_2021/analysis/mapping/bin_11_39.bam
samtools sort  /home/tomasc/genome_analysis_2021/analysis/mapping/bin_11_39.bam -o /home/tomasc/genome_analysis_2021/analysis/mapping/bin_11_39_sorted.bam


samtools view -S -b /home/tomasc/genome_analysis_2021/analysis/mapping/bin_12_37.sam -o /home/tomasc/genome_analysis_2021/analysis/mapping/bin_12_37.bam
samtools sort  /home/tomasc/genome_analysis_2021/analysis/mapping/bin_12_37.bam -o /home/tomasc/genome_analysis_2021/analysis/mapping/bin_12_37_sorted.bam

samtools view -S -b /home/tomasc/genome_analysis_2021/analysis/mapping/bin_12_39.sam -o /home/tomasc/genome_analysis_2021/analysis/mapping/bin_12_39.bam
samtools sort  /home/tomasc/genome_analysis_2021/analysis/mapping/bin_12_39.bam -o /home/tomasc/genome_analysis_2021/analysis/mapping/bin_12_39_sorted.bam


samtools view -S -b /home/tomasc/genome_analysis_2021/analysis/mapping/bin_15_37.sam -o /home/tomasc/genome_analysis_2021/analysis/mapping/bin_15_37.bam
samtools sort  /home/tomasc/genome_analysis_2021/analysis/mapping/bin_15_37.bam -o /home/tomasc/genome_analysis_2021/analysis/mapping/bin_15_37_sorted.bam

samtools view -S -b /home/tomasc/genome_analysis_2021/analysis/mapping/bin_15_39.sam -o /home/tomasc/genome_analysis_2021/analysis/mapping/bin_15_39.bam
samtools sort  /home/tomasc/genome_analysis_2021/analysis/mapping/bin_15_39.bam -o /home/tomasc/genome_analysis_2021/analysis/mapping/bin_15_39_sorted.bam


samtools view -S -b /home/tomasc/genome_analysis_2021/analysis/mapping/bin_16_37.sam -o /home/tomasc/genome_analysis_2021/analysis/mapping/bin_16_37.bam
samtools sort  /home/tomasc/genome_analysis_2021/analysis/mapping/bin_16_37.bam -o /home/tomasc/genome_analysis_2021/analysis/mapping/bin_16_37_sorted.bam

samtools view -S -b /home/tomasc/genome_analysis_2021/analysis/mapping/bin_16_39.sam -o /home/tomasc/genome_analysis_2021/analysis/mapping/bin_16_39.bam
samtools sort  /home/tomasc/genome_analysis_2021/analysis/mapping/bin_16_39.bam -o /home/tomasc/genome_analysis_2021/analysis/mapping/bin_16_39_sorted.bam


samtools view -S -b /home/tomasc/genome_analysis_2021/analysis/mapping/bin_18_37.sam -o /home/tomasc/genome_analysis_2021/analysis/mapping/bin_18_37.bam
samtools sort  /home/tomasc/genome_analysis_2021/analysis/mapping/bin_18_37.bam -o /home/tomasc/genome_analysis_2021/analysis/mapping/bin_18_37_sorted.bam

samtools view -S -b /home/tomasc/genome_analysis_2021/analysis/mapping/bin_18_39.sam -o /home/tomasc/genome_analysis_2021/analysis/mapping/bin_18_39.bam
samtools sort  /home/tomasc/genome_analysis_2021/analysis/mapping/bin_18_39.bam -o /home/tomasc/genome_analysis_2021/analysis/mapping/bin_18_39_sorted.bam


samtools view -S -b /home/tomasc/genome_analysis_2021/analysis/mapping/bin_20_37.sam -o /home/tomasc/genome_analysis_2021/analysis/mapping/bin_20_37.bam
samtools sort  /home/tomasc/genome_analysis_2021/analysis/mapping/bin_20_37.bam -o /home/tomasc/genome_analysis_2021/analysis/mapping/bin_20_37_sorted.bam

samtools view -S -b /home/tomasc/genome_analysis_2021/analysis/mapping/bin_20_39.sam -o /home/tomasc/genome_analysis_2021/analysis/mapping/bin_20_39.bam
samtools sort  /home/tomasc/genome_analysis_2021/analysis/mapping/bin_20_39.bam -o /home/tomasc/genome_analysis_2021/analysis/mapping/bin_20_39_sorted.bam


samtools view -S -b /home/tomasc/genome_analysis_2021/analysis/mapping/bin_23_37.sam -o /home/tomasc/genome_analysis_2021/analysis/mapping/bin_23_37.bam
samtools sort  /home/tomasc/genome_analysis_2021/analysis/mapping/bin_23_37.bam -o /home/tomasc/genome_analysis_2021/analysis/mapping/bin_23_37_sorted.bam

samtools view -S -b /home/tomasc/genome_analysis_2021/analysis/mapping/bin_23_39.sam -o /home/tomasc/genome_analysis_2021/analysis/mapping/bin_23_39.bam
samtools sort  /home/tomasc/genome_analysis_2021/analysis/mapping/bin_23_39.bam -o /home/tomasc/genome_analysis_2021/analysis/mapping/bin_23_39_sorted.bam


samtools view -S -b /home/tomasc/genome_analysis_2021/analysis/mapping/bin_25_37.sam -o /home/tomasc/genome_analysis_2021/analysis/mapping/bin_25_37.bam
samtools sort  /home/tomasc/genome_analysis_2021/analysis/mapping/bin_25_37.bam -o /home/tomasc/genome_analysis_2021/analysis/mapping/bin_25_37_sorted.bam

samtools view -S -b /home/tomasc/genome_analysis_2021/analysis/mapping/bin_25_39.sam -o /home/tomasc/genome_analysis_2021/analysis/mapping/bin_25_39.bam
samtools sort  /home/tomasc/genome_analysis_2021/analysis/mapping/bin_25_39.bam -o /home/tomasc/genome_analysis_2021/analysis/mapping/bin_25_39_sorted.bam


samtools view -S -b /home/tomasc/genome_analysis_2021/analysis/mapping/bin_26_37.sam -o /home/tomasc/genome_analysis_2021/analysis/mapping/bin_26_37.bam
samtools sort  /home/tomasc/genome_analysis_2021/analysis/mapping/bin_26_37.bam -o /home/tomasc/genome_analysis_2021/analysis/mapping/bin_26_37_sorted.bam

samtools view -S -b /home/tomasc/genome_analysis_2021/analysis/mapping/bin_26_39.sam -o /home/tomasc/genome_analysis_2021/analysis/mapping/bin_26_39.bam
samtools sort  /home/tomasc/genome_analysis_2021/analysis/mapping/bin_26_39.bam -o /home/tomasc/genome_analysis_2021/analysis/mapping/bin_26_39_sorted.bam
