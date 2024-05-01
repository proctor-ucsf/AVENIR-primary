#----------------------------
# avenir-Config.R
#
# AVENIR trial
# Primary analysis
#
# Configuration file
#
# Load packages, color palettes
# set up for parallel computing
#----------------------------


#----------------------------
# load worker packages
#----------------------------
library(here)
library(renv)
library(tidyverse)
library(rmarkdown)
library(kableExtra)
library(readxl)
library(zoo)
library(janitor)
library(scales)
library(osfr)

#----------------------------
# data visualization packages
#----------------------------
library(cowplot)
library(patchwork)

#----------------------------
# load stats packages
#----------------------------
library(sandwich)
library(lmtest)

#----------------------------
# load spatial packages
#----------------------------
library(sf)
library(geodata)
library(ggspatial)

#----------------------------
# set up for parallel computing
#----------------------------
library(foreach)
library(doParallel)
registerDoParallel(detectCores() - 1)

#----------------------------
# custom color pallettes
#----------------------------
# safe color blind palette
# http://jfly.iam.u-tokyo.ac.jp/color/
# http://www.cookbook-r.com/Graphs/Colors_(ggplot2)/
# Reference: Bang Wong, Nature Methods 2011: https://www.nature.com/articles/nmeth.1618
cbpal <- c("#999999", "#E69F00", "#56B4E9", "#009E73", "#F0E442", "#0072B2", "#D55E00", "#CC79A7")

# NY Times rainbow from the Upshot
# https://www.nytimes.com/interactive/2020/03/21/upshot/coronavirus-deaths-by-country.html
nytpal <- c("#510000", "#AC112D", "#EC6D47", "#F2A058", "#F7D269", "#839772", "#325D8A")

#----------------------------
# local data paths
#----------------------------

# raw_data <- "~/Library/CloudStorage/Box-Box/AVENIR/Data/Mortality"
final_data <- "~/Library/CloudStorage/Box-Box/AVENIR/Data/Mortality/rounds_1to5"
randomization_data <- "~/Library/CloudStorage/Box-Box/AVENIR/Randomization/Mortality"
