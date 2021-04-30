#!/bin/bash -l
#SBATCH -A g2021012
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 06:00:00
#SBATCH -J BWA
#SBATCH --mail-type=ALL
#SBATCH --mail-user tomas.cumlin.1485@student.uu.se
# Load modules
module load bioinfo-tools
module load bwa
# Your commands


bwa index /home/tomasc/genome_analysis_2021/analysis/binning/binning_2.fa

bwa mem -t 2 /home/tomasc/genome_analysis_2021/analysis/binning/binning_2.fa /home/tomasc/genome_analysis_2021/data/trimmed_data/forward_paired_137_1.fq.gz /home/tomasc/genome_analysis_2021/data/trimmed_data/reverse_paired_137_2.fq.gz > /home/tomasc/genome_analysis_2021/analysis/mapping/bin_2_37.sam

bwa mem -t 2 /home/tomasc/genome_analysis_2021/analysis/binning/binning_2.fa /home/tomasc/genome_analysis_2021/data/trimmed_data/forward_paired_139_1.fq.gz /home/tomasc/genome_analysis_2021/data/trimmed_data/reverse_paired_139_2.fq.gz > /home/tomasc/genome_analysis_2021/analysis/mapping/bin_2_39.sam


bwa index /home/tomasc/genome_analysis_2021/analysis/binning/binning_3.fa

bwa mem -t 2 /home/tomasc/genome_analysis_2021/analysis/binning/binning_3.fa /home/tomasc/genome_analysis_2021/data/trimmed_data/forward_paired_137_1.fq.gz /home/tomasc/genome_analysis_2021/data/trimmed_data/reverse_paired_137_2.fq.gz > /home/tomasc/genome_analysis_2021/analysis/mapping/bin_3_37.sam

bwa mem -t 2 /home/tomasc/genome_analysis_2021/analysis/binning/binning_3.fa /home/tomasc/genome_analysis_2021/data/trimmed_data/forward_paired_139_1.fq.gz /home/tomasc/genome_analysis_2021/data/trimmed_data/reverse_paired_139_2.fq.gz > /home/tomasc/genome_analysis_2021/analysis/mapping/bin_3_39.sam


bwa index /home/tomasc/genome_analysis_2021/analysis/binning/binning_5.fa

bwa mem -t 2 /home/tomasc/genome_analysis_2021/analysis/binning/binning_5.fa /home/tomasc/genome_analysis_2021/data/trimmed_data/forward_paired_137_1.fq.gz /home/tomasc/genome_analysis_2021/data/trimmed_data/reverse_paired_137_2.fq.gz > /home/tomasc/genome_analysis_2021/analysis/mapping/bin_5_37.sam

bwa mem -t 2 /home/tomasc/genome_analysis_2021/analysis/binning/binning_5.fa /home/tomasc/genome_analysis_2021/data/trimmed_data/forward_paired_139_1.fq.gz /home/tomasc/genome_analysis_2021/data/trimmed_data/reverse_paired_139_2.fq.gz > /home/tomasc/genome_analysis_2021/analysis/mapping/bin_5_39.sam


bwa index /home/tomasc/genome_analysis_2021/analysis/binning/binning_8.fa

bwa mem -t 2 /home/tomasc/genome_analysis_2021/analysis/binning/binning_8.fa /home/tomasc/genome_analysis_2021/data/trimmed_data/forward_paired_137_1.fq.gz /home/tomasc/genome_analysis_2021/data/trimmed_data/reverse_paired_137_2.fq.gz > /home/tomasc/genome_analysis_2021/analysis/mapping/bin_8_37.sam

bwa mem -t 2 /home/tomasc/genome_analysis_2021/analysis/binning/binning_8.fa /home/tomasc/genome_analysis_2021/data/trimmed_data/forward_paired_139_1.fq.gz /home/tomasc/genome_analysis_2021/data/trimmed_data/reverse_paired_139_2.fq.gz > /home/tomasc/genome_analysis_2021/analysis/mapping/bin_8_39.sam


bwa index /home/tomasc/genome_analysis_2021/analysis/binning/binning_11.fa

bwa mem -t 2 /home/tomasc/genome_analysis_2021/analysis/binning/binning_11.fa /home/tomasc/genome_analysis_2021/data/trimmed_data/forward_paired_137_1.fq.gz /home/tomasc/genome_analysis_2021/data/trimmed_data/reverse_paired_137_2.fq.gz > /home/tomasc/genome_analysis_2021/analysis/mapping/bin_11_37.sam

bwa mem -t 2 /home/tomasc/genome_analysis_2021/analysis/binning/binning_11.fa /home/tomasc/genome_analysis_2021/data/trimmed_data/forward_paired_139_1.fq.gz /home/tomasc/genome_analysis_2021/data/trimmed_data/reverse_paired_139_2.fq.gz > /home/tomasc/genome_analysis_2021/analysis/mapping/bin_11_39.sam


bwa index /home/tomasc/genome_analysis_2021/analysis/binning/binning_12.fa

bwa mem -t 2 /home/tomasc/genome_analysis_2021/analysis/binning/binning_12.fa /home/tomasc/genome_analysis_2021/data/trimmed_data/forward_paired_137_1.fq.gz /home/tomasc/genome_analysis_2021/data/trimmed_data/reverse_paired_137_2.fq.gz > /home/tomasc/genome_analysis_2021/analysis/mapping/bin_12_37.sam

bwa mem -t 2 /home/tomasc/genome_analysis_2021/analysis/binning/binning_12.fa /home/tomasc/genome_analysis_2021/data/trimmed_data/forward_paired_139_1.fq.gz /home/tomasc/genome_analysis_2021/data/trimmed_data/reverse_paired_139_2.fq.gz > /home/tomasc/genome_analysis_2021/analysis/mapping/bin_12_39.sam


bwa index /home/tomasc/genome_analysis_2021/analysis/binning/binning_15.fa

bwa mem -t 2 /home/tomasc/genome_analysis_2021/analysis/binning/binning_15.fa /home/tomasc/genome_analysis_2021/data/trimmed_data/forward_paired_137_1.fq.gz /home/tomasc/genome_analysis_2021/data/trimmed_data/reverse_paired_137_2.fq.gz > /home/tomasc/genome_analysis_2021/analysis/mapping/bin_15_37.sam

bwa mem -t 2 /home/tomasc/genome_analysis_2021/analysis/binning/binning_15.fa /home/tomasc/genome_analysis_2021/data/trimmed_data/forward_paired_139_1.fq.gz /home/tomasc/genome_analysis_2021/data/trimmed_data/reverse_paired_139_2.fq.gz > /home/tomasc/genome_analysis_2021/analysis/mapping/bin_15_39.sam


bwa index /home/tomasc/genome_analysis_2021/analysis/binning/binning_16.fa

bwa mem -t 2 /home/tomasc/genome_analysis_2021/analysis/binning/binning_16.fa /home/tomasc/genome_analysis_2021/data/trimmed_data/forward_paired_137_1.fq.gz /home/tomasc/genome_analysis_2021/data/trimmed_data/reverse_paired_137_2.fq.gz > /home/tomasc/genome_analysis_2021/analysis/mapping/bin_16_37.sam

bwa mem -t 2 /home/tomasc/genome_analysis_2021/analysis/binning/binning_16.fa /home/tomasc/genome_analysis_2021/data/trimmed_data/forward_paired_139_1.fq.gz /home/tomasc/genome_analysis_2021/data/trimmed_data/reverse_paired_139_2.fq.gz > /home/tomasc/genome_analysis_2021/analysis/mapping/bin_16_39.sam


bwa index /home/tomasc/genome_analysis_2021/analysis/binning/binning_18.fa

bwa mem -t 2 /home/tomasc/genome_analysis_2021/analysis/binning/binning_18.fa /home/tomasc/genome_analysis_2021/data/trimmed_data/forward_paired_137_1.fq.gz /home/tomasc/genome_analysis_2021/data/trimmed_data/reverse_paired_137_2.fq.gz > /home/tomasc/genome_analysis_2021/analysis/mapping/bin_18_37.sam

bwa mem -t 2 /home/tomasc/genome_analysis_2021/analysis/binning/binning_18.fa /home/tomasc/genome_analysis_2021/data/trimmed_data/forward_paired_139_1.fq.gz /home/tomasc/genome_analysis_2021/data/trimmed_data/reverse_paired_139_2.fq.gz > /home/tomasc/genome_analysis_2021/analysis/mapping/bin_18_39.sam


bwa index /home/tomasc/genome_analysis_2021/analysis/binning/binning_20.fa

bwa mem -t 2 /home/tomasc/genome_analysis_2021/analysis/binning/binning_20.fa /home/tomasc/genome_analysis_2021/data/trimmed_data/forward_paired_137_1.fq.gz /home/tomasc/genome_analysis_2021/data/trimmed_data/reverse_paired_137_2.fq.gz > /home/tomasc/genome_analysis_2021/analysis/mapping/bin_20_37.sam

bwa mem -t 2 /home/tomasc/genome_analysis_2021/analysis/binning/binning_20.fa /home/tomasc/genome_analysis_2021/data/trimmed_data/forward_paired_139_1.fq.gz /home/tomasc/genome_analysis_2021/data/trimmed_data/reverse_paired_139_2.fq.gz > /home/tomasc/genome_analysis_2021/analysis/mapping/bin_20_39.sam


bwa index /home/tomasc/genome_analysis_2021/analysis/binning/binning_23.fa

bwa mem -t 2 /home/tomasc/genome_analysis_2021/analysis/binning/binning_23.fa /home/tomasc/genome_analysis_2021/data/trimmed_data/forward_paired_137_1.fq.gz /home/tomasc/genome_analysis_2021/data/trimmed_data/reverse_paired_137_2.fq.gz > /home/tomasc/genome_analysis_2021/analysis/mapping/bin_23_37.sam

bwa mem -t 2 /home/tomasc/genome_analysis_2021/analysis/binning/binning_23.fa /home/tomasc/genome_analysis_2021/data/trimmed_data/forward_paired_139_1.fq.gz /home/tomasc/genome_analysis_2021/data/trimmed_data/reverse_paired_139_2.fq.gz > /home/tomasc/genome_analysis_2021/analysis/mapping/bin_23_39.sam


bwa index /home/tomasc/genome_analysis_2021/analysis/binning/binning_25.fa

bwa mem -t 2 /home/tomasc/genome_analysis_2021/analysis/binning/binning_25.fa /home/tomasc/genome_analysis_2021/data/trimmed_data/forward_paired_137_1.fq.gz /home/tomasc/genome_analysis_2021/data/trimmed_data/reverse_paired_137_2.fq.gz > /home/tomasc/genome_analysis_2021/analysis/mapping/bin_25_37.sam

bwa mem -t 2 /home/tomasc/genome_analysis_2021/analysis/binning/binning_25.fa /home/tomasc/genome_analysis_2021/data/trimmed_data/forward_paired_139_1.fq.gz /home/tomasc/genome_analysis_2021/data/trimmed_data/reverse_paired_139_2.fq.gz > /home/tomasc/genome_analysis_2021/analysis/mapping/bin_25_39.sam


bwa index /home/tomasc/genome_analysis_2021/analysis/binning/binning_26.fa

bwa mem -t 2 /home/tomasc/genome_analysis_2021/analysis/binning/binning_26.fa /home/tomasc/genome_analysis_2021/data/trimmed_data/forward_paired_137_1.fq.gz /home/tomasc/genome_analysis_2021/data/trimmed_data/reverse_paired_137_2.fq.gz > /home/tomasc/genome_analysis_2021/analysis/mapping/bin_26_37.sam

bwa mem -t 2 /home/tomasc/genome_analysis_2021/analysis/binning/binning_26.fa /home/tomasc/genome_analysis_2021/data/trimmed_data/forward_paired_139_1.fq.gz /home/tomasc/genome_analysis_2021/data/trimmed_data/reverse_paired_139_2.fq.gz > /home/tomasc/genome_analysis_2021/analysis/mapping/bin_26_39.sam

