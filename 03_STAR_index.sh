#!/bin/bash
THREADS=6
GENOME_INDEX_DIR=/data5/tomato_RNAseq/STAR_INDEX
FASTA_FILES=/data5/F15FTSUSAT0747_TOMrcwM/YXD_Bismark_pipeline/ftp.solgenomics.net/genomes/Solanum_lycopersicum/assembly/build_3.00/S_lycopersicum_chromosomes.3.00.fa
GTF_FILE=

mkdir -p ${GENOME_INDEX_DIR}
STAR --runMode genomeGenerate --runThreadN ${THREADS} --genomeDir ${GENOME_INDEX_DIR} --genomeFastaFiles ${FASTA_FILES} --sjdbGTFfile ${GTF_FILE}
