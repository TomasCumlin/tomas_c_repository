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

declare -a list=(bin_2 bin_3 bin_5 bin_8 bin_11 bin_12 bin_15 bin_16 bin_18 bin_20 bin_23 bin_25 bin_26)

for bin in "${list[@]}"; do
	htseq-count -f bam -r pos -t CDS -i ID --stranded=no ${bam_dir}/${bin}_37_sorted.bam <(sed '/##FASTA/Q' ${gff_dir}/${bin}.gff) > ${out_dir}/htseq_37_${bin}.out 
	htseq-count -f bam -r pos -t CDS -i ID --stranded=no ${bam_dir}/${bin}_39_sorted.bam <(sed '/##FASTA/Q' ${gff_dir}/${bin}.gff) > ${out_dir}/htseq_39_${bin}.out
done
