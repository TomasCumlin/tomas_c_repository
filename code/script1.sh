#!/bin/bash -l
#SBATCH -A g2021012
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 08:00:00
#SBATCH -J DNA_assembly
#SBATCH --mail-type=ALL
#SBATCH --mail-user tomas.cumlin.1485@student.uu.se
# Load modules
module load bioinfo-tools
module load megahit
# Your commands
megahit --kmin-1pass --k-min 65 --k-max 105 --k-step 10 -1 /home/tomasc/genome_analysis_2021/tomas_c_repository/data/dna_data/SRR4342129_1.paired.trimmed.fastq.gz,/home/tomasc/genome_analysis_2021/tomas_c_repository/data/dna_data/SRR4342133_1.paired.trimmed.fastq.gz -2 /home/tomasc/genome_analysis_2021/tomas_c_repository/data/dna_data/SRR4342129_2.paired.trimmed.fastq.gz,/home/tomasc/genome_analysis_2021/tomas_c_repository/data/dna_data/SRR4342133_2.paired.trimmed.fastq.gz -o /home/tomasc/genome_analysis_2021/tomas_c_repository/data/assembly

