## Second submission

> If there are references describing the methods in your package, please add these in the description field of your DESCRIPTION file in the form authors (year) <doi:...> authors (year) <arXiv:...> authors (year, ISBN:...) or if those are not available: <https:...> with no space after 'doi:', 'arXiv:', 'https:' and angle brackets for auto-linking. (If you want to add a title as well please put it in quotes: "Title")

I added references for specific methods.

> Please add \value to .Rd files regarding exported methods and explain the functions results in the documentation. Please write about the structure of the output (class) and also what the output means. (If a function does not return a value, please document that too, e.g. \value{No return value, called for side effects} or similar) 
Missing Rd-tags: 
  bio.volume.Rd: \value
  install_measure.Rd: \value

The tag `\value` was added to bio.volume.Rd and install_measure.Rd.

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
  
  Found the following (possibly) invalid DOIs:
    DOI: 10.1093/plankt/fbg096
      From: DESCRIPTION
      Status: Forbidden
      Message: 403

> On ubuntu-gcc-release (r-release)
  checking package dependencies ... NOTE
  Package suggested but not available for checking: ‘xml2’

0 errors √ | 0 warnings √ | 2 notes x
