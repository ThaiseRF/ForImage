# global reference (will be initialized in .onLoad)

py_c <- reticulate::py_config()

os <- NULL
builtins <- NULL
cv2 <- NULL
imutils <- NULL
utilities <- NULL
measure_dim <- NULL


.onLoad <- function(libname, pkgname) {

  if (utils::compareVersion(py_c$version, "3.5") < 0) {
    stop(
      paste0(
        c(
          "Python 3.5+ is required. If this is installed please set RETICULATE_PYTHON ",
          "to the path to the Python 3 binary on your system and try re-installing/",
          "re-loading the package."
        ),
        collapse = ""
      )
    )
    return()
  }

  python_path <- system.file("python", package = "forImage")

  os <<- reticulate::import("os", delay_load = TRUE)
  builtins <<- reticulate::import("builtins", delay_load = TRUE)
  cv2 <<- reticulate::import("cv2", delay_load = TRUE)
  imutils <<- reticulate::import("imutils", delay_load = TRUE)
  utilities <<- reticulate::import_from_path("cv_utilities", path = python_path)
  measure_dim <<- reticulate::import_from_path("measure_dim", path = python_path)

}


