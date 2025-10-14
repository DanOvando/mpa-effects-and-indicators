# Evaluating Common Indicators for Assessing Marine Protected Areas’ Effects on Conservation and Catches - Ovando &amp; Lopazanski
## Dan Ovando & Cori Lopazanski - In Review

This repository contains code needed to replicate the results and manuscript. 

1. This repository is enabled with `renv`, which will walk you through installing the required packages. Open R, ensure that your working directory is set to the location of the folder containing the repository information, and ensure that you have the `renv` package installed, then run `renv::restore()`. 
  
  - You need R version >= 4.5
  
  - You need to have compiler tools installed. In Windows, that means RTools (https://cran.r-project.org/bin/windows/Rtools/), on macOS I recommend https://github.com/coatless-mac/macrtools#diagnose, Linux should be fine on its own.
  
  - If something goes wrong with `renv`, the core dependency of this project that is not on CRAN can be installed with `remotes::install_github("danovando/marlin")`
  
  - `renv` doesn't always work perfectly, particularly on windows, so if you run into errors, check messages and try and resolve. When in doubt, 01_run_mpa_indicators.R and see where package errors come up and manually install whatever dependencies issues come up.

2. Once you've got packages up and running, run 01_run_mpa_indicators.R . This should take about 15 hours under the settings used in the paper (92 states, 8 cores)

```
prep_run(
  n_states = 92,
  run_name = "indicators_v1.0",
  drop_patches = FALSE,
  experiment_workers = parallel::detectCores() - 2,
  rx = 21,
  ry = 21,
  patch_area = 5^2
) # loads packages and creates and returns some global variables for the analysis


```


3. Once the results are produced, knit 02_mpa_indicators_paper.qmd to reproduce the manuscript