# Evaluating Common Indicators for Assessing Marine Protected Areas’ Effects on Conservation and Catches - Ovando &amp; Lopazanski
## Dan Ovando & Cori Lopazanski - In Review

This repository contains code needed to replicate the results and manuscript. 

1. This repository is enabled with `renv`, which will walk you through installing the required packages. Open R, ensure that your working directory is set to the location of the folder containing the repository information, and ensure that you have the `renv` package installed, then run `renv::restore()`. 
  - You need R version >= 4.5
  - You need to have compiler tools installed. In Windows, that means RTools (https://cran.r-project.org/bin/windows/Rtools/), on macOS I recommend https://github.com/coatless-mac/macrtools#diagnose
  - If something goes wrong with `renv`, the core dependency of this project that is not on CRAN can be installed with `remotes::install_github("danovando/marlin")`
2. Once that is done, run 01_run_mpa_indicators.R. This should take about 15 hours under the settings used in the paper

3. Once the results are produced, knit 02_mpa_indicators_paper.qmd to reproduce the manuscript