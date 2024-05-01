# AVENIR-primary

Primary analysis for the AVENIR trial

## Description 

This repository includes R code to run all of the analysis for the paper:

O'Brien et al. Azithromycin to reduce mortality: an adaptive cluster-randomized trial (in press).

This work was funded by the Bill & Melinda Gates Foundation (grants OPP1210548 and INV-002454), and was registered under clinical trial [NCT04224987](https://classic.clinicaltrials.gov/ct2/show/NCT04224987)

Should you have any questions about the files in this repository, please contact Ben Arnold at UCSF ([ben.arnold\@ucsf.edu](mailto:ben.arnold@ucsf.edu){.email}) or the corresponding author for the paper.

## Linked Repositories and Additional Resources

### Open Science Framework

This GitHub repository is mirrored on the Open Science Framework (OSF). The OSF project page includes additional study-related resources, including the compiled HTML computational notebooks created from the `.Rmd` files, and the final analysis datasets.

<https://osf.io/48q7k/>

## Software Information

Following: <https://www.nature.com/documents/nr-software-policy.pdf>

### System Requirements

All analyses were run using R software version 4.3.2 on macOS Monterey using the RStudio IDE (<https://www.rstudio.com>).

`> sessionInfo()`

`R version 4.3.2 (2023-10-31)`

`Platform: aarch64-apple-darwin20 (64-bit)`

`Running under: macOS Monterey 12.6`

### Installation Guide and Instructions for Use (Desktop)

You can download and install R from CRAN: <https://cran.r-project.org>

You can download and install RStudio from their website: <https://www.rstudio.com>

All R packages required to run the analyses are sourced in the file `AVENIR-primary-Config.R`.

To reproduce all analyses in the paper, we recommend that you:

1.  Clone the GitHub repository to your computer

For example, in the location on your computer where you would like to clone the repository, you could type into the Terminal command:

`git clone https://github.com/proctor-ucsf/AVENIR-primary.git`

2.  Recreate the exact package environment using the `renv` package.

You can do this by opening the R project file ([AVENIR-primary-analysis.Rproj](https://github.com/proctor-ucsf/AVENIR-primary/blob/main/AVENIR-primary.Rproj)) in RStudio, loading the `renv` package, and typing `renv::restore()` to restore the package environment from the projects [renv.lock](https://github.com/proctor-ucsf/AVENIR-primary/blob/main/renv.lock) file.

3.  All of the analysis scripts should run smoothly (scripts `0-xx.Rmd` to `9-xx.Rmd`) EXCEPT for two of them: `1-AVENIR-primary-CONSORT-flow.Rmd` and `5-AVENIR-primary-enrollment-map.Rmd`. Script 1 creates the CONSORT flow numbers and relies on a few idiosyncratic, internal lists to identify clusters that could not be randomized — we did not make those files public. Script 5 relies on GPS information, which are considered identifiable and are not provided in the public datasets. All other scripts will run smoothly. The first script, `0-AVENIR-primary-download-public-data.R`, will download the public datasets to your local repository in the `/data` directory.  The `.Rmd` files will save HTML file output as well as figures and summary estimates in the `/output` directory.

### Additional details

You can run the `.Rmd` notebook scripts one-by-one or you can compile [`AVENIR-primary-run-all.R`](https://github.com/proctor-ucsf/AVENIR-primary/blob/main/R/AVENIR-primary-run-all.R), which is the file we used to run the final analyses (e.g., from the command line `R CMD BATCH AVENIR-primary-run-all.R &`).

### License

This project is covered by the CC0 1.0 Universal license.