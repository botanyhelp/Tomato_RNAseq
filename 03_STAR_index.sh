#!/bin/bash
#download genome and gtf from ensemblgenomes
# wget ftp://ftp.ensemblgenomes.org/pub/plants/release-43/gtf/solanum_lycopersicum/Solanum_lycopersicum.SL3.0.43.gtf.gz
# wget ftp://ftp.ensemblgenomes.org/pub/plants/release-43/fasta/solanum_lycopersicum/dna/Solanum_lycopersicum.SL3.0.dna.chromosome.1.fa.gz
# wget ftp://ftp.ensemblgenomes.org/pub/plants/release-43/fasta/solanum_lycopersicum/dna/Solanum_lycopersicum.SL3.0.dna.chromosome.2.fa.gz
# wget ftp://ftp.ensemblgenomes.org/pub/plants/release-43/fasta/solanum_lycopersicum/dna/Solanum_lycopersicum.SL3.0.dna.chromosome.3.fa.gz
# wget ftp://ftp.ensemblgenomes.org/pub/plants/release-43/fasta/solanum_lycopersicum/dna/Solanum_lycopersicum.SL3.0.dna.chromosome.4.fa.gz
# wget ftp://ftp.ensemblgenomes.org/pub/plants/release-43/fasta/solanum_lycopersicum/dna/Solanum_lycopersicum.SL3.0.dna.chromosome.5.fa.gz
# wget ftp://ftp.ensemblgenomes.org/pub/plants/release-43/fasta/solanum_lycopersicum/dna/Solanum_lycopersicum.SL3.0.dna.chromosome.6.fa.gz
# wget ftp://ftp.ensemblgenomes.org/pub/plants/release-43/fasta/solanum_lycopersicum/dna/Solanum_lycopersicum.SL3.0.dna.chromosome.7.fa.gz
# wget ftp://ftp.ensemblgenomes.org/pub/plants/release-43/fasta/solanum_lycopersicum/dna/Solanum_lycopersicum.SL3.0.dna.chromosome.8.fa.gz
# wget ftp://ftp.ensemblgenomes.org/pub/plants/release-43/fasta/solanum_lycopersicum/dna/Solanum_lycopersicum.SL3.0.dna.chromosome.9.fa.gz
# wget ftp://ftp.ensemblgenomes.org/pub/plants/release-43/fasta/solanum_lycopersicum/dna/Solanum_lycopersicum.SL3.0.dna.chromosome.10.fa.gz
# wget ftp://ftp.ensemblgenomes.org/pub/plants/release-43/fasta/solanum_lycopersicum/dna/Solanum_lycopersicum.SL3.0.dna.chromosome.11.fa.gz
# wget ftp://ftp.ensemblgenomes.org/pub/plants/release-43/fasta/solanum_lycopersicum/dna/Solanum_lycopersicum.SL3.0.dna.chromosome.12.fa.gz

THREADS=6
GENOME_INDEX_DIR=/data5/tomato_RNAseq/STAR_INDEX
FASTA_FILES=/data5/tomato_RNAseq/genome/Solanum_lycopersicum.SL3.0/Solanum_lycopersicum.SL3.0.dna.fa
GTF_FILE=/data5/tomato_RNAseq/genome/Solanum_lycopersicum.SL3.0.43.gtf
ulimit -n 2048
#mkdir -p ${GENOME_INDEX_DIR}
STAR --runMode genomeGenerate --runThreadN ${THREADS} --genomeDir ${GENOME_INDEX_DIR} --genomeFastaFiles ${FASTA_FILES} --sjdbGTFfile ${GTF_FILE} 

