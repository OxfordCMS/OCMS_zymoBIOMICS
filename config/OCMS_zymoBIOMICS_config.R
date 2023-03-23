###################################################################
###################################################################
# Configuration file for analysing zymoBIOTICS community
# standards
###################################################################
###################################################################

# file with counts
counts_table=""

# annotations - choose from "NCBI" or "GTDB"
annotations = "GTDB"

# type of sequencing - choose from "16S" or "shotgun"
sequence_type = "shotgun"

# which columns in the data correspond to standards. This should
# be a regular R vector of column names e.g. c("sample1", "sample2")
standards_columns=""

# define any cutoffs for true positive and composition analysis
species_cutoff=0.01
genus_cutoff=0.01

# specify which taxonomic levels to show e.g. c("species","genus")
show_levels <- c("species","genus")