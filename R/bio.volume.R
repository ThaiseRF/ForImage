#' Biovolume calculus
#'
#' @description
#' This function calculates foraminifera biovolume, through geometric approximation. To compute others organisms cell volume use \code{\link{volume.total}} function
#'
#' @param data a numeric vector or data frame with size data. Size data parameters by model see \code{\link{exampleForam}}
#' @param genus foraminifera genus to calculate individual biovolume. See all genera in \code{\link{exampleForam}}
#' @param pop (optional) protoplasm occupancy percentage. Default value set for specific genus in \code{\link{exampleForam}}.
#'
#' @details The function calculates the biovolume of different individuals from the available genera. The geometric models are applied automatically based on adaptation performed by \href{changelater}{Freitas et al.}
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
#' dat <- bio.volume(ammonia)
#'

bio.volume <- function(data, pop = 0.76, genus = NULL, ...){

  x <- data.frame(data)

  if ("pop" %in% colnames(x))
    pop <- x$pop

  if (!("pop" %in% colnames(x)) && !missing(genus)) {

    d_pop <- forImage::data_pop

    if (any(genus == d_pop)) {

      pop <- (d_pop[match(genus, d_pop$genera), ]$mean)/100

    } else {
      stop("Genus not available in database. Set genus = NULL")
    }
  }

  if (genus == "cibicides" | genus == "cibicidoides") {

    v = volume.total(x, model = "2sl")$vol

    result <- x %>%
      tibble::as.tibble() %>%
      dplyr::mutate(vol = v, biovol = vol * pop)
    result

  }


  if (genus == "archaias" | genus == "cribroelphidium" | genus == "elphidium" |
      genus == "laevipeneroplis" | genus == "triloculina"){

    v = volume.total(x, model = "3hl")$vol

    result <- x %>%
      tibble::as.tibble() %>%
      dplyr::mutate(vol = v, biovol = vol * pop)
    result

  }

  if (genus == "amphis" | genus == "glabratella" | genus == "patellina" |
      genus == "rotorbis"){

    v = volume.total(x, model = "4hl")$vol

    result <- x %>%
      tibble::as.tibble() %>%
      dplyr::mutate(vol = v, biovol = vol * pop)
    result

  }

  if (genus == "asterotrochammina" | genus == "deuterammina" | genus == "lepidodeuterammina" |
      genus == "paratrochammina" | genus == "remaneicella" | genus == "rotaliammina"){

    v = volume.total(x, model = "6fs")$vol

    result <- x %>%
      tibble::as.tibble() %>%
      dplyr::mutate(vol = v, biovol = vol * pop)
    result

  }

  if (genus == "cymbaloporetta" | genus == "disconorbis" | genus == "discorbia" |
      genus == "discorbinella" | genus == "discorbis" | genus == "discorbitina" |
      genus == "eoeponidella" | genus == "hanzawaia" | genus == "heronallenia" |
      genus == "mullinoides" | genus == "mychostomina" | genus == "neoconorbina" |
      genus == "planorbulina" | genus == "planulina" | genus == "rotorbinella" |
      genus == "spirorbina" | genus == "trochammina"){

    v = volume.total(x, model = "7fs")$vol

    result <- x %>%
      tibble::as.tibble() %>%
      dplyr::mutate(vol = v, biovol = vol * pop)
    result

  }

  if (genus == "cornuspira" | genus == "planispirillina" | genus == "spirillina"){

    v = volume.total(x, model = "8hl")$vol

    result <- x %>%
      tibble::as.tibble() %>%
      dplyr::mutate(vol = v, biovol = vol * pop)
    result

  }

  if (genus == "ammonia" | genus == "astrononion" | genus == "buliminella" |
      genus == "cancris" | genus == "cassidulina" | genus == "edentostomina" |
      genus == "eponides" | genus == "fissurina" | genus == "fursenkoina" |
      genus == "globocassidulina" | genus == "hauerina" | genus == "miliolinella" |
      genus == "pararotalia" | genus == "rosalina"){

    v = volume.total(x, model = "10hl")$vol

    result <- x %>%
      tibble::as.tibble() %>%
      dplyr::mutate(vol = v, biovol = vol * pop)
    result

  }

  if (genus == "caronia" | genus == "reophax" | genus == "tetrataxiella" |
      genus == "textularia"){

    v = volume.total(x, model = "11fs")$vol

    result <- x %>%
      tibble::as.tibble() %>%
      dplyr::mutate(vol = v, biovol = vol * pop)
    result

  }

  if (genus == "angulogerina"){

    v = volume.total(x, model = "12v")$vol

    result <- x %>%
      tibble::as.tibble() %>%
      dplyr::mutate(vol = v, biovol = vol * pop)
    result

  }

  if (genus == "bolivina" | genus == "sigmavirgulina"){

    v = volume.total(x, model = "13hlsl")$vol

    result <- x %>%
      tibble::as.tibble() %>%
      dplyr::mutate(vol = v, biovol = vol * pop)
    result

  }


  if (genus == "articulina" | genus == "loxostomina"){
    v = volume.total(x, model = "14hl")$vol

    result <- x %>%
      tibble::as.tibble() %>%
      dplyr::mutate(vol = v, biovol = vol * pop)
    result

  }

  if (genus == "nonionella" | genus == "nonioninoides"){
    v = volume.total(x, model = "15hl")$vol

    result <- x %>%
      tibble::as.tibble() %>%
      dplyr::mutate(vol = v, biovol = vol * pop)
    result

  }

  if (genus == "quinqueloculina" | genus == "triloculina"){

    if ("model" %in% colnames(x)) {
      v = volume.total(x)$vol

    }
    #This genera can have ellipsoidal forms as well as triangular dypyramid forms.
    #Inform in package vignettes - description, to inform model in bio.volume()

    result <- x %>%
      tibble::as.tibble() %>%
      dplyr::mutate(vol = v, biovol = vol * pop)
    result

  }

  if (genus == "rectocibicides" | genus == "sorites" |
      genus == "webbinella" | genus == "wiesnerella"){

    v = volume.total(x, model = "axh")$vol

    result <- x %>%
      tibble::as.tibble() %>%
      dplyr::mutate(vol = v, biovol = vol * pop)
    result

  }


  return(result)

}












