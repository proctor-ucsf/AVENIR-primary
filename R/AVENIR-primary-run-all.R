#-----------------------------
# AVENIR-primary-run-all.R
#
# Run all analysis scripts
# for AVENIR primary analyses
#
# there are 9 scripts, all 
# in R markdown in:
# AVENIR-primary/R
#
# output is saved in:
# AVENIR-primary/output
#-----------------------------

#-----------------------------
# preamble 
# source configuration file
#-----------------------------
library(here)
source(here("R/0-AVENIR-primary-Config.R"))

#-----------------------------
# Download public datasets
# to local repository
#-----------------------------
source(here("R/0-AVENIR-primary-download-public-data.R"))

#-----------------------------
# Figure S1
# CONSORT participant flow
#
# ATTENTION: THIS WILL NOT RUN
# ON PUBLIC DATASETS
#-----------------------------
rmarkdown::render(here::here("R/1-AVENIR-primary-CONSORT-flow.Rmd"),
                  output_file = here::here("output/1-AVENIR-primary-CONSORT-flow.html"))

#-----------------------------
# Table 1
# Baseline balance
#-----------------------------
rmarkdown::render(here::here("R/2-AVENIR-primary-baseline-balance.Rmd"),
                  output_file = here::here("output/2-AVENIR-primary-baseline-balance.html"))

#-----------------------------
# Table S2
# Treatment coverage
#-----------------------------
rmarkdown::render(here::here("R/3-AVENIR-primary-treatment-coverage.Rmd"),
                  output_file = here::here("output/3-AVENIR-primary-treatment-coverage.html"))

#-----------------------------
# Table S6
# Serious Adverse Events
#-----------------------------
rmarkdown::render(here::here("R/4-AVENIR-primary-SAEs.Rmd"),
                  output_file = here::here("output/4-AVENIR-primary-SAEs.html"))

#-----------------------------
# Figure 1
# Study map, enrollment, and  
# adaptive treatment allocations
#
# ATTENTION: THIS WILL NOT RUN
# ON PUBLIC DATASETS
#-----------------------------
rmarkdown::render(here::here("R/5-AVENIR-primary-enrollment-map.Rmd"),
                  output_file = here::here("output/5-AVENIR-primary-enrollment-map.html"))

#-----------------------------
# Figure 2, Figure 3
# Table S3, Table S4, Table S5
# Primary and Secondary analyses
#-----------------------------
rmarkdown::render(here::here("R/6-AVENIR-primary-primary-analysis.Rmd"),
                  output_file = here::here("output/6-AVENIR-primary-primary-analysis.html"))

rmarkdown::render(here::here("R/7-AVENIR-primary-secondary-analyses.Rmd"),
                  output_file = here::here("output/7-AVENIR-primary-secondary-analyses.html"))

rmarkdown::render(here::here("R/8-AVENIR-primary-mortality-rate-effect-figures.Rmd"),
                  output_file = here::here("output/8-AVENIR-primary-mortality-rate-effect-figures.html"))


#-----------------------------
# Table S7
# Between-cluster SD and
# coefficient of variation
# by treatment group
#-----------------------------
rmarkdown::render(here::here("R/9-AVENIR-primary-mortality-rate-SDs.Rmd"),
                  output_file = here::here("output/9-AVENIR-primary-mortality-rate-SDs.html"))

#-----------------------------
# session info
#-----------------------------
sessionInfo()

