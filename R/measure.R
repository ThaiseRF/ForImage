#' Foraminifera image measurement
#'
#' @description
#' This function measures dimensions in photomicrographs.
#' See details \sQuote{Details}:
#'
#' @usage measure(file, scale = NULL, ref_scale = NULL, pco = FALSE)
#' @param file image file with or without metadata.
#' @param scale (optional) image physical pixel size (metric / pixel).
#' @param ref_scale (optional) reference scale available on image (in micrometers or millimeters). This scale should be inserted under the main object.
#' @param pco (optional) will assess proportion of cell occupancy inside the shell. Outlined proportion. This argument is s  till being tested and should be used with caution.
#'
#' @return An dataframe consisting of:
#'
#' @author Thaise R. Freitas \email{thaisericardo.freitas@@gmail.com}
#'
#' @seealso \code{\link{bio.volume}}, \code{\link{volume.total}}
#' @importFrom magrittr %>%
#' @export
#' @examples 2

measure <- function(file, scale = NULL, ref_scale = NULL, pco = FALSE) {

  ##set python path and initiate modules

  python_path <- system.file("python", package = "forImage")

  utilities <- reticulate::import_from_path("cv_utilities", path = python_path)
  measure_dim <- reticulate::import_from_path("measure_dim", path = python_path)

  os <- reticulate::import("os")
  utils <- utilities$Utilities()
  cv <- measure_dim$ComputerVision()


  ## Pixel per metric - manual

  if(!missing(scale)) {
    scale <- scale
  }

  ## Pixel per metric through scale in image

  if(!missing(ref_scale)) {
    ref_scale <- ref_scale
  }


  ## Pixel per metric through meta_file

  if(missing(scale) && missing(ref_scale)){

    ppm <- reticulate::import_from_path("ppm", path = python_path)

    px <- ppm$Pixels()

    xml_file <- os$path$splitext(file)[[1]]
    xml_file <- paste(xml_file, "tif_meta.xml", sep = ".", collapse = "")

    scale <- px$get_pixels_axio(xml_file = xml_file)

  }



  dim <- cv$measure_object_dimension(file, scale = scale, reference_scale = ref_scale)

  if(isTRUE(pco)){
    protoplasm <- reticulate::import_from_path("protoplasm", path = python_path)

    prot <- protoplasm$Protoplasm()

    sc <- dim$scale

    p <- prot$measure(file = file, scale = sc)

    df <- dplyr::bind_cols(dim, p)
  } else {

    df <- data.frame(dim)

  }


  return(df)

}

