
<!-- README.md is generated from README.Rmd. Please edit that file -->

# forImage

The goal of `forImage` is to facilitate foraminiferal test measurement
and biomass estimation.

The package is proposed as an alternative to manual and/or
multi-software dependent methods for biometry and biomass estimation.

## Installation

The package **requires** Python \>= 3.5.

You can install `forImage` from github with:

``` r
# install.packages("devtools")
devtools::install_github("ThaiseRF/forImage")
```

Use `install_measure()` to install all Python modules dependencies at
once in a virtual environment. This function is a wrapper of [reticulate
py\_install()](https://rstudio.github.io/reticulate/reference/py_install.html)
and requires a conda installation on Windows.

If an error in
[read.dcf(path)](https://github.com/r-lib/devtools/issues/1978#issuecomment-460685615)
appears during the installation:

``` r
devtools::install_github("r-lib/remotes")
#Restart R
devtools::install_github("ThaiseRF/forImage")
```
