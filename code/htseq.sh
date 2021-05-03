#!/bin/bash -l
#SBATCH -A g2021012
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 04:00:00
#SBATCH -J expression_analysis
#SBATCH --mail-type=ALL
#SBATCH --mail-user tomas.cumlin.1485@student.uu.se
# Load modules
module load bioinfo-tools
module load htseq
# Your commands

bam_dir=/home/tomasc/genome_analysis_2021/analysis/mapping
gff_dir=/home/tomasc/genome_analysis_2021/analysis/prokka/gff
out_dir=/home/tomasc/genome_analysis_2021/analysis/htseq

for i in 2 3 5 8 11 12 15 16 18 20 23 25 26 
do
	htseq-count -f bam -r pos -t CDS -i ID --stranded=no ${bam_dir}/bin_$i_37_sorted.bam <(sed '/##FASTA/Q' ${gff_dir}/binning_$i.gff) > ${out_dir}/htseq_37_$i.out 
	htseq-count -f bam -r pos -t CDS -i ID --stranded=no ${bam_dir}/bin_$i_39_sorted.bam <(sed '/##FASTA/Q' ${gff_dir}/binning_$i.gff) > ${out_dir}/htseq_39_$i.out
done
