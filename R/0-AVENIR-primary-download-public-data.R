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
# https://osf.io/43jzq
avenir_child_visit <- osf_retrieve_file("43jzq") %>%
  osf_download(path=here("data"), conflicts = "overwrite", progress = TRUE)

# Child-phase level dataset
# https://osf.io/vbgmf
avenir_child_phase <- osf_retrieve_file("vbgmf") %>%
  osf_download(path=here("data"), conflicts = "overwrite", progress = TRUE)

# Grappe-phase level dataset
# https://osf.io/jztbx
avenir_grappe_phase <- osf_retrieve_file("jztbx") %>%
  osf_download(path=here("data"), conflicts = "overwrite", progress = TRUE)

# SAE dataset
# https://osf.io/23tnj
avenir_sae <- osf_retrieve_file("23tnj") %>%
  osf_download(path=here("data"), conflicts = "overwrite", progress = TRUE)

#-----------------------------
# session info
#-----------------------------
sessionInfo()

