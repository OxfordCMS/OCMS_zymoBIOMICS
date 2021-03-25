# OCMS analysis of zymoBIOMICS DNA/cell standards

This repository contains an rmarkdown file that builds a report of the preformance of a sequencing experiment (16S rRNA amplicon or shotgun metagenomics) based on [zymoBIOMICS microbial community standards](https://www.zymoresearch.com/collections/zymobiomics-microbial-community-standards). This is in order to give an overall impression of any biases that may be present in a study.


## Dependencies

The following dependencies (R packages) are required to run the report. The versions provided below are the versions that I have run the analysis with. It has not been tested on all package versions.

| Package       | Version |
|---------------|---------|
| rmarkdown     | 1.16    |
| ggplot2       | 3.2.1   |
| dplyr         | 0.8.0.1 |
| gridExtra     | 2.3     |
| RColorBrewer  | 1.1-2   |
| reshape       | 0.8.8   |


## Input

There are two input files that are required to build a report:

* Counts table (this is abundance.dir/taxa_abundances.tsv as output by OCMS_16S dada2)
* Configuration file (found in the config/ directory)

These files should be both present in your working directory.

## Configuration

The configuration file is simply an R script that is sourced in the .Rmd file. The values must be changed to specify the counts table that you are working from and databases that were used for the reference. This is important as the standards follow different naming schemes depending on the database used for assigning taxa. Below is an example of the confifuration file:

```
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
standards_columns=c("CMS0016_002", "CMS0016_016")

# define cutoffs for true positive analysis
species_cutoff=0.01
genus_cutoff=0.01
```

## Rendering the report

Once the configuration file is complete you can render the report as you would any other rmarkdown file e.g.

```
rmarkdown::render("OCMS_zymoBIOMICS.Rmd", output_format="html_document")
```

This will produce an html report in your current working directory.

