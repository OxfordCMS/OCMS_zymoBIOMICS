###################################################################
###################################################################
# Configuration file for analysing zymoBIOTICS community
# standards
###################################################################
###################################################################

# file with counts
counts_table="species_counts.tsv"

# annotations - choose from "NCBI" or "GTDB"
annotations = "NCBI"

# type of sequencing - choose from "16S" or "shotgun"
# for shotgun this currently only works with outputs
# from the kraken2 pipeline
sequence_type = "shotgun"

# which columns in the data correspond to standards. This should
# be a regular R vector of column names e.g. c("sample1", "sample2")
standards_columns=c("zymo1.abundance", "zymo2.abundance")

# define any cutoffs for true positive and composition analysis
species_cutoff=0.01
genus_cutoff=0.01
