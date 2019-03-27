#' Biovolume calculus
#'
#' @description
#' This function calculates foraminifera biovolume, through geometric approximation. To compute others organisms cell volume use \code{\link{volume.total}} function
#'
#' @param data a numeric vector or data frame with size data. Size data parameters by model see.
#' @param genus foraminifera genus to calculate individual biovolume. See all genera in \code{\link{data_pco}}
#' @param pco (optional) percent of cell occupancy in the test. Default value set for specific genus in \code{\link{data_pco}}.
#' @param ... other arguments.
#' @details The function calculates the biovolume of different individuals from the available genera. The geometric models are applied automatically based on adaptation performed by.
#'
#' @author Thaise R. Freitas \email{thaisericardo.freitas@@gmail.com}
#'
#' @seealso \code{\link{volume.total}}
#' @seealso \code{\link{biomass}}
#' @seealso \code{\link{measure}}
#' @importFrom magrittr %>%
#' @export
#' @examples
#' # Calculate biovolume for different genera
#' data(ammonia)
#' dat <- bio.volume(ammonia, genus= "ammonia")
#' dat
#'

bio.volume <- function(data, pco = 0.76, genus = NULL, ...){

  x <- data.frame(data)

  if (!is.character(genus) && !("genus" %in% colnames(x))) {
    stop("Genus not specified")
  }

  if ("genus" %in% colnames(x)) {
    genus <- x$genus
  }

  if ("pco" %in% colnames(x) && !missing(genus)) {

    pco <- x$pco

    d_pco <- forImage::data_pco

    if (any(genus == d_pco)) {

      x$model <- (d_pco[match(genus, d_pco$genera), ]$model)
    }
  }

  if (!("pco" %in% colnames(x)) && !missing(genus)) {

    d_pco <- forImage::data_pco

    if (any(genus == d_pco)) {

      pco <- (d_pco[match(genus, d_pco$genera), ]$mean)/100

      x$model <- (d_pco[match(genus, d_pco$genera), ]$model)

    } else {
      stop("Genus not available in database.")
    }
  }

  v <- forImage::volume.total(x)$vol
  bv <- v * pco
  result <- x %>%
    tibble::as_tibble(.) %>%
    dplyr::rowwise(.) %>%
    tibble::add_column(vol = v, biovol = bv)
  result

  return(result)
}






