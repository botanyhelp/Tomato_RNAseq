#!/bin/bash
THREADS=10
GENOME_INDEX_DIR=/data5/tomato_RNAseq/STAR_INDEX
FASTA_FILES=/data5/F15FTSUSAT0747_TOMrcwM/YXD_Bismark_pipeline/ftp.solgenomics.net/genomes/Solanum_lycopersicum/assembly/build_3.00/S_lycopersicum_chromosomes.3.00.fa
GTF_FILE=/data/users/xzy50/ITAG3.0_gene_models.gff

BASE_DIR=/data5/tomato_RNAseq/trim_galore
OUT_DIR=/data5/tomato_RNAseq/STAR_align_out

ulimit -n 2048
#STAR --genomeDir ${GENOME_INDEX_DIR} --readFilesCommand zcat \
#--readFilesIn  ${BASE_DIR}/M-1-105/M-1-105_combined_1_val_1.fq.gz ${BASE_DIR}/M-1-105/M-1-105_combined_2_val_2.fq.gz \
#--outSAMtype BAM SortedByCoordinate --limitBAMsortRAM 150000000000 \
#--twopassMode Basic --outFilterMultimapNmax 1 --quantMode TranscriptomeSAM \
#--runThreadN ${THREADS} --outFileNamePrefix ${OUT_DIR}/M-1-105/

STAR --genomeDir ${GENOME_INDEX_DIR} --readFilesCommand zcat --readFilesIn  ${BASE_DIR}/RDrP1/RDrP1_CAGATC_L002_R1_001_val_1.fq.gz ${BASE_DIR}/RDrP1/RDrP1_CAGATC_L002_R2_001_val_2.fq.gz --outSAMtype BAM SortedByCoordinate --limitBAMsortRAM 150000000000 --twopassMode Basic --outFilterMultimapNmax 1 --quantMode TranscriptomeSAM --runThreadN ${THREADS} --outFileNamePrefix ${OUT_DIR}/RDrP1/
STAR --genomeDir ${GENOME_INDEX_DIR} --readFilesCommand zcat --readFilesIn  ${BASE_DIR}/RDrP2/RDrP2_ACTTGA_L002_R1_001_val_1.fq.gz ${BASE_DIR}/RDrP2/RDrP2_ACTTGA_L002_R2_001_val_2.fq.gz --outSAMtype BAM SortedByCoordinate --limitBAMsortRAM 150000000000 --twopassMode Basic --outFilterMultimapNmax 1 --quantMode TranscriptomeSAM --runThreadN ${THREADS} --outFileNamePrefix ${OUT_DIR}/RDrP2/
STAR --genomeDir ${GENOME_INDEX_DIR} --readFilesCommand zcat --readFilesIn  ${BASE_DIR}/RDrP3/RDrP3_GATCAG_L002_R1_001_val_1.fq.gz ${BASE_DIR}/RDrP3/RDrP3_GATCAG_L002_R2_001_val_2.fq.gz --outSAMtype BAM SortedByCoordinate --limitBAMsortRAM 150000000000 --twopassMode Basic --outFilterMultimapNmax 1 --quantMode TranscriptomeSAM --runThreadN ${THREADS} --outFileNamePrefix ${OUT_DIR}/RDrP3/

STAR --genomeDir ${GENOME_INDEX_DIR} --readFilesCommand zcat --readFilesIn  ${BASE_DIR}/RRCtlP1/RRCtlP1_TGACCA_L002_R1_001_val_1.fq.gz ${BASE_DIR}/RRCtlP1/RRCtlP1_TGACCA_L002_R2_001_val_2.fq.gz --outSAMtype BAM SortedByCoordinate --limitBAMsortRAM 150000000000 --twopassMode Basic --outFilterMultimapNmax 1 --quantMode TranscriptomeSAM --runThreadN ${THREADS} --outFileNamePrefix ${OUT_DIR}/RRCtlP1/
STAR --genomeDir ${GENOME_INDEX_DIR} --readFilesCommand zcat --readFilesIn  ${BASE_DIR}/RRCtlP2/RRCtlP2_ACAGTG_L002_R1_001_val_1.fq.gz ${BASE_DIR}/RRCtlP2/RRCtlP2_ACAGTG_L002_R2_001_val_2.fq.gz --outSAMtype BAM SortedByCoordinate --limitBAMsortRAM 150000000000 --twopassMode Basic --outFilterMultimapNmax 1 --quantMode TranscriptomeSAM --runThreadN ${THREADS} --outFileNamePrefix ${OUT_DIR}/RRCtlP2/
STAR --genomeDir ${GENOME_INDEX_DIR} --readFilesCommand zcat --readFilesIn  ${BASE_DIR}/RRCtlP3/RRCtlP3_GCCAAT_L002_R1_001_val_1.fq.gz ${BASE_DIR}/RRCtlP3/RRCtlP3_GCCAAT_L002_R2_001_val_2.fq.gz --outSAMtype BAM SortedByCoordinate --limitBAMsortRAM 150000000000 --twopassMode Basic --outFilterMultimapNmax 1 --quantMode TranscriptomeSAM --runThreadN ${THREADS} --outFileNamePrefix ${OUT_DIR}/RRCtlP3/

STAR --genomeDir ${GENOME_INDEX_DIR} --readFilesCommand zcat --readFilesIn  ${BASE_DIR}/RutgersWtP1/RutgersWtP1_ATCACG_L002_R1_001_val_1.fq.gz ${BASE_DIR}/RutgersWtP1/RutgersWtP1_ATCACG_L002_R2_001_val_2.fq.gz --outSAMtype BAM SortedByCoordinate --limitBAMsortRAM 150000000000 --twopassMode Basic --outFilterMultimapNmax 1 --quantMode TranscriptomeSAM --runThreadN ${THREADS} --outFileNamePrefix ${OUT_DIR}/RutgersWtP1/
STAR --genomeDir ${GENOME_INDEX_DIR} --readFilesCommand zcat --readFilesIn  ${BASE_DIR}/RutgersWtP2/RutgersWtP2_CGATGT_L002_R1_001_val_1.fq.gz ${BASE_DIR}/RutgersWtP2/RutgersWtP2_CGATGT_L002_R2_001_val_2.fq.gz --outSAMtype BAM SortedByCoordinate --limitBAMsortRAM 150000000000 --twopassMode Basic --outFilterMultimapNmax 1 --quantMode TranscriptomeSAM --runThreadN ${THREADS} --outFileNamePrefix ${OUT_DIR}/RutgersWtP2/
STAR --genomeDir ${GENOME_INDEX_DIR} --readFilesCommand zcat --readFilesIn  ${BASE_DIR}/RutgersWtP3/RutgersWtP3_TTAGGC_L002_R1_001_val_1.fq.gz ${BASE_DIR}/RutgersWtP3/RutgersWtP3_TTAGGC_L002_R2_001_val_2.fq.gz --outSAMtype BAM SortedByCoordinate --limitBAMsortRAM 150000000000 --twopassMode Basic --outFilterMultimapNmax 1 --quantMode TranscriptomeSAM --runThreadN ${THREADS} --outFileNamePrefix ${OUT_DIR}/RutgersWtP3/
