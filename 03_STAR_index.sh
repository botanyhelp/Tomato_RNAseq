#!/bin/bash
THREADS=6
GENOME_INDEX_DIR=/data5/tomato_RNAseq/STAR_INDEX
FASTA_FILES=/data5/tomato_RNAseq/genome/Solanum_lycopersicum.SL3.0/Solanum_lycopersicum.SL3.0.dna.fa
GTF_FILE=/data5/tomato_RNAseq/genome/Solanum_lycopersicum.SL3.0.43.gtf
ulimit -n 2048
#mkdir -p ${GENOME_INDEX_DIR}
STAR --runMode genomeGenerate --runThreadN ${THREADS} --genomeDir ${GENOME_INDEX_DIR} --genomeFastaFiles ${FASTA_FILES} --sjdbGTFfile ${GTF_FILE} 


# wget ftp://ftp.ensemblgenomes.org/pub/plants/release-43/gtf/solanum_lycopersicum/Solanum_lycopersicum.SL3.0.43.gtf.gz
#THREADS=6
#GENOME_INDEX_DIR=/data5/tomato_RNAseq/STAR_INDEX
#FASTA_FILES=/data5/F15FTSUSAT0747_TOMrcwM/YXD_Bismark_pipeline/ftp.solgenomics.net/genomes/Solanum_lycopersicum/assembly/build_3.00/S_lycopersicum_chromosomes.3.00.fa
#GTF_FILE=/data/users/xzy50/Solanum_lycopersicum.SL3.0.43.gtf
#ulimit -n 2048
#mkdir -p ${GENOME_INDEX_DIR}
#STAR --runMode genomeGenerate --runThreadN ${THREADS} --genomeDir ${GENOME_INDEX_DIR} --genomeFastaFiles ${FASTA_FILES} --sjdbGTFfile ${GTF_FILE} --sjdbGTFchrPrefix SL3.0ch


