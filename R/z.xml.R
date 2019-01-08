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
#'   \item {px_width} : {image width in pixels}
#'   \item {px_height} : {image height in pixels}
#'   \item {x_scale} : {image x scale factor}
#'   \item {y_scale} : {image y scale factor}
#'   \item {z_depth} : {measured focus range depth (z)}}
#' @importFrom magrittr %>%
#' @examples
#' # Get z data from path containing image metadata.
#' res <- z.xml("filePath")
#' res
#' @rdname z
#' @export z.xml

z.xml <- function(filePath, ...){

  files <- list.files(pattern = c('*.tif_meta.xml','*.xml'))

  data  <- lapply(files, function(x) {
    xml_data <- XML::xmlToList(XML::xmlParse(x))
    file <- as.character(xml_data$Tags$V5)
    px_width <- as.double(gsub(",", ".", xml_data$Tags$V11))
    px_height <- as.double(gsub(",", ".", xml_data$Tags$V12))
    x_scale <- as.double(gsub(",", ".", xml_data$Scaling$Factor_0))
    y_scale <- as.double(gsub(",", ".", xml_data$Scaling$Factor_1))
    v58 <- as.numeric(xml_data$Tags$V58)
    v59 <- as.numeric(xml_data$Tags$V59)

    df <- data.frame(file, px_width, px_height,x_scale, y_scale, v58, v59)

    })

  data <- data.table::rbindlist(data)

  df <- dplyr::mutate(data, z = abs(v58 - v59))

  return(df)



}




depth.result <- function(){}





