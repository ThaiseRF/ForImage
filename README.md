
<!-- README.md is generated from README.Rmd. Please edit that file -->

# forImage

The goal of `forImage` is to facilitate foraminiferal test measurement
and biomass estimation.

The package is proposed as an alternative to manual and/or
multi-software dependent methods for biometry and biomass estimation.

## Installation

The package **requires** Python \>= 3.5 and the following Python
modules: `scipy`, `imutils`, `numpy`, `pandas`, `Pillow` and `OpenCV`
via pip (version 4.1.1.26). On Ubuntu:

``` bash
sudo apt-get install python-pip
sudo pip install pip --upgrade
sudo pip install scipy
....
sudo pip install opencv-python==4.1.1.26
```

On Windows:

``` bash
python -m pip install --upgrade pip
pip install scipy
....
pip install opencv-python==4.1.1.26
```

You can install `forImage` from github with:

``` r
# install.packages("devtools")
devtools::install_github("ThaiseRF/forImage")
```

If an error in
[read.dcf(path)](https://github.com/r-lib/devtools/issues/1978#issuecomment-460685615)
appears during the installation:

``` r
devtools::install_github("r-lib/remotes")
#Restart R
devtools::install_github("ThaiseRF/forImage")
```
