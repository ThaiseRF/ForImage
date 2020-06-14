#' Foraminifera image measurement
#'
#' @description
#' The function identifies forams in photomicrographs and measure the individuals dimensions.
#' See details \sQuote{Details}:
#'
#' @usage measure(filePath)
#' @param filePath path containing the photomicrographs along with their metadata.
#' @param ... other arguments.
#'
#' @return An dataframe consisting of:
#'
#' @author Thaise R. Freitas \email{thaisericardo.freitas@@gmail.com}
#'
#' @seealso \code{\link{bio.volume}}, \code{\link{volume.total}}
#' @importFrom magrittr %>%
#' @export
#' @examples 2

measure <- function(filePath, ...) {

  python_path <- system.file("python", package = "forImage")

  utilities <- reticulate::import_from_path("cv_utilities", path = python_path)
  measure_dim <- reticulate::import_from_path("measure_dim", path = python_path)


  os <- reticulate::import("os")
  utils <- utilities$Utilities()
  cv <- measure_dim$ComputerVision()


  files <- list.files(pattern = c('\\.tif$','\\.tiff$', '\\.jpg$'))
  xml <- list.files(pattern = c('\\.xml$'))

  data  <- lapply(files, function(x) {
    image_name = os$path$splitext(x)[[1]]
    i <- paste(image_name, "tif_meta.xml", sep = ".", collapse = "")
    p <- utils$get_pixels(xml_file = i)
    d <- cv$measure_object_dimension(x, xml_file = i, unit = 'um')
  })

  df <- data.table::rbindlist(data)

  return(df)

}

