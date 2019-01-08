# global reference (will be initialized in .onLoad)


cv2 <- NULL
imutils <- NULL
utilities <- NULL
measure_dim <- NULL


.onLoad <- function(libname, pkgname) {

  python_path <- system.file("python", package = "forImage")

  cv2 <<- reticulate::import("cv2", delay_load = TRUE)
  imutils <<- reticulate::import("imutils", delay_load = TRUE)
  utilities <<- reticulate::import_from_path("cv_utilities", path = python_path)
  measure_dim <<- reticulate::import_from_path("measure_dim", path = python_path)

}


