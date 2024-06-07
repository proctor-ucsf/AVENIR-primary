#-----------------------------
# 0-AVENIR-primary-download-public-data.R
#
# Download publicly available datasets
# from the Open Science Framework
# https://osf.io/48q7k/
#
# datasets are saved in:
# AVENIR-primary/data
#-----------------------------


#-----------------------------
# preamble - source config file
#-----------------------------
library(here)
source(here("R/0-AVENIR-primary-Config.R"))

#-----------------------------
# Download data from osf.io
#-----------------------------

# Child-visit level dataset
# https://osf.io/7nfjk
avenir_child_visit <- osf_retrieve_file("7nfjk") %>%
  osf_download(path=here("data"), conflicts = "overwrite", progress = TRUE)

# Child-phase level dataset
# https://osf.io/n67em
avenir_child_phase <- osf_retrieve_file("n67em") %>%
  osf_download(path=here("data"), conflicts = "overwrite", progress = TRUE)

# Grappe-phase level dataset
# https://osf.io/jczq6
avenir_grappe_phase <- osf_retrieve_file("jczq6") %>%
  osf_download(path=here("data"), conflicts = "overwrite", progress = TRUE)

# SAE dataset
# https://osf.io/hfqws
avenir_sae <- osf_retrieve_file("hfqws") %>%
  osf_download(path=here("data"), conflicts = "overwrite", progress = TRUE)

#-----------------------------
# session info
#-----------------------------
sessionInfo()

