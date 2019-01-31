#' Import image object depth (Z)
#'
#' The function retrieve the object depth information from image metadata as source.
#'
#'
#' @param filePath Path to image metadata files, \code{'.xml', '.tif_meta.xml'}
#'
#' @return A dataframe with the folowing information:
#' \itemize{
#'   \item {file} : {filename}
#'   \item {z_depth} : {measured focus range depth (z)}}
#' @importFrom magrittr %>%
#' @export

depth.xml <- function(xml_file) {

  if (is.null(xml_file)) {
    stop("Object not specified.")
  }

  data <- xml2::read_xml(xml_file)

  # Filename
  name <- data %>%
    xml2::xml_find_all("//Tags/V5") %>%
    xml2::xml_text()
  filename <- name[1]

  # First
  one <- data %>%
    xml2::xml_find_all("//Tags/V58") %>%
    xml2::xml_text() %>%
    as.integer()

  #Second
  two <- data %>%
    xml2::xml_find_all("//Tags/V59") %>%
    xml2::xml_text() %>%
    as.integer()

  z_depth <- abs(one[1] - two[1])
  result <- data.frame(filename, z_depth)


  return(result)


}

