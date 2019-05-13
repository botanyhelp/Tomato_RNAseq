#!/bin/bash
THREADS=32
GENOME_INDEX_DIR=/data4/hsk13/STAR_INDEX
FASTA_FILES=/data/genomes/TAIR10/TAIR10_chr_all.fa
GTF_FILE=/data/genomes/TAIR10/Arabidopsis_thaliana.TAIR10.37.gtf
BASE_DIR=/data4/hsk13/trimmed_data
OUT_DIR=/data4/hsk13/STAR_align_out

ulimit -n 2048

STAR --genomeDir ${GENOME_INDEX_DIR} --readFilesCommand zcat \
--readFilesIn  ${BASE_DIR}/M-1-105/M-1-105_combined_1_val_1.fq.gz ${BASE_DIR}/M-1-105/M-1-105_combined_2_val_2.fq.gz \
--outSAMtype BAM SortedByCoordinate --limitBAMsortRAM 150000000000 \
--twopassMode Basic --outFilterMultimapNmax 1 --quantMode TranscriptomeSAM \
--runThreadN ${THREADS} --outFileNamePrefix ${OUT_DIR}/M-1-105/
