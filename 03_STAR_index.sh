#!/bin/bash
THREADS=6
GENOME_INDEX_DIR=/data5/tomato_RNAseq/STAR_INDEX
FASTA_FILES=/data/genomes/TAIR10/TAIR10_chr_all.fa
GTF_FILE=/data/genomes/TAIR10/Arabidopsis_thaliana.TAIR10.37.gtf

mkdir -p ${GENOME_INDEX_DIR}
STAR --runMode genomeGenerate --runThreadN ${THREADS} --genomeDir ${GENOME_INDEX_DIR} --genomeFastaFiles ${FASTA_FILES} --sjdbGTFfile ${GTF_FILE}
