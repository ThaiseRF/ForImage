#' Foraminifera image measurement
#'
#' @description
#' This function measures dimensions in photomicrographs.
#' See details \sQuote{Details}:
#'
#' @usage measure(file, pco = FALSE)
#' @param file image file with or without metadata.
#' @param pco (optional) will assess proportion of cell occupancy inside the shell. Outlined proportion.
#'
#' @return An dataframe consisting of:
#'
#' @author Thaise R. Freitas \email{thaisericardo.freitas@@gmail.com}
#'
#' @seealso \code{\link{bio.volume}}, \code{\link{volume.total}}
#' @importFrom magrittr %>%
#' @export
#' @examples 2

measure <- function(file, pco = FALSE) {

  python_path <- system.file("python", package = "forImage")

  utilities <- reticulate::import_from_path("cv_utilities", path = python_path)
  measure_dim <- reticulate::import_from_path("measure_dim", path = python_path)

  os <- reticulate::import("os")
  utils <- utilities$Utilities()
  cv <- measure_dim$ComputerVision()

  #image_name <- sub('\\.tiff$', '', file)
  #meta_name <- sub('\\.tif_meta.xml$', '', xml_file)

  ##DEPOIS inserir opção de escala daqui

  xml_file <- os$path$splitext(file)[[1]]
  xml_file <- paste(xml_file, "tif_meta.xml", sep = ".", collapse = "")

  gp <- utils$get_pixels(xml_file = xml_file)
  #print(gp)

  dim <- cv$measure_object_dimension(file, xml_file = xml_file, unit = 'um')

  if(isTRUE(pco)){
    protoplasm <- reticulate::import_from_path("protoplasm", path = python_path)

    prot <- protoplasm$Protoplasm()

    p <- prot$measure(file = file, x_scale = gp)

    df <- dplyr::bind_cols(dim, p)
  } else {

    df <- data.frame(dim)

  }


  return(df)

}

