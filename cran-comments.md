## Test environments
- R-hub windows-x86_64-devel (r-devel)
- R-hub ubuntu-gcc-release (r-release)
- R-hub fedora-clang-devel (r-devel)

## R CMD check results
> On windows-x86_64-devel (r-devel), ubuntu-gcc-release (r-release), fedora-clang-devel (r-devel)
  checking CRAN incoming feasibility ... NOTE
  Maintainer: 'Thaise R Freitas <thaisericardo.freitas@gmail.com>'
  
  New submission
  
  Found the following (possibly) invalid URLs:
    URL: https://doi.org/10.1093/plankt/17.1.131
      From: inst/doc/forImage_vignette.html
      Status: 403
      Message: Forbidden
      

> On ubuntu-gcc-release (r-release)
  checking package dependencies ... NOTE
  Package suggested but not available for checking: ‘xml2’

0 errors √ | 0 warnings √ | 2 notes x
