#' Volumetric calculus of organisms
#'
#' @description The function calculates organisms volume based on geometric approximation.
#'
#'
#' @param data data frame containing size data. Size data parameters by model see.
#' @param model character informing geometric model to calculate volume, the models options are listed below:
#' \itemize{
#'   \item \code{'1hl'} : sphere
#'   \item \code{'2sl'} : half-sphere
#'   \item \code{'3hl'} : prolate spheroid
#'   \item \code{'4hl'} : cone or double cone
#'   \item \code{'6fs'} : paraboloid
#'   \item \code{'7fs'} : dome
#'   \item \code{'8hl'} : cylinder
#'   \item \code{'10hl'} : ellipsoid
#'   \item \code{'11fs'} : elliptic cone
#'   \item \code{'12v'} : cone + half ellipsoid
#'   \item \code{'13hlsl'} : gomphonemoid
#'   \item \code{'14hl'} : prism on elliptic base/elliptic cylinder
#'   \item \code{'15hl'} : half elliptic prism
#'   \item \code{'17fs'} : triangular dypyramid
#'   \item \code{'ahx'} : area x heigth
#'
#' }
#' @param pco other arguments.
#' @param ... other arguments.
#' @details These geometric models applied in this function are based in the selection made by Freitas et al. Which were mainly based and adapted from microalgae models developed by Hillebrand et al. (1999) - \code{('.hl')}, Sun and Liu (2003) - \code{('.sl')} and Vadrucci, Cabrini and Basset (2007) - \code{('.v')}. Some other formulas were adapted \code{('.fs')} to better calculate the test volume of benthic foraminifera.
#'  For more information, see \href{Freitas et al. (2019)}{Freitas et al. (2019)}
#'
#' @return A dataframe or numeric object, consisting of calculated individual volume along with biovolume if the \code{pco} is informed.
#' @author Thaise R. Freitas \email{thaisericardo.freitas@@gmail.com}
#' @references
#' \itemize{
#'   \item Hillebrand, H., Dürselen, C.D., Kirschtel, D., Pollingher, U., & Zohary, T. (1999). Biovolume calculation for pelagic and benthic microalgae. \emph{Journal of Phycology}, 35(2), 403–424. \emph{doi:10.1046/j.1529-8817.1999.3520403.x}
#'   \item Sun, J., & Liu, D. (2003). Geometric models for calculating cell biovolume and surface area for phytoplankton. \emph{Journal of Plankton Research}, 25(11), 1331–1346. \emph{doi:10.1093/plankt/fbg096}
#'   \item Vadrucci, M. R., Cabrini, M., & Basset, A. (2007). Biovolume determination of phytoplankton guilds in transitional water ecosystems of Mediterranean Ecoregion. \emph{Transitional Waters Bulletin}, 2, 83–102. \emph{doi:10.1285/i1825229Xv1n2p83}
#' }
#'
#' @seealso \code{\link{measure}}
#' @seealso \code{\link{bio.volume}}
#' @importFrom magrittr %>%
#' @examples
#' #Ammonia size data
#' data("ammonia")
#'
#' #calculate test volume
#' df <- volume.total(data = ammonia, model = "10hl")
#' df
#'
#'
#' @rdname volume
#' @export volume.total

volume.total <- function(data, model = NULL, pco = NULL, ...) {

  x <- data.frame(data)

  if (!is.character(model) && !("model" %in% colnames(x))) {
    stop("Geometric model not specified")

    if (!any(model == c("1hl", "2sl", "3hl", "4hl",
                  "6fs", "7fs","8hl", "10hl", "11fs",
                  "12v", "13hlsl", "14hl", "15hl", "17fs", "axh"))) {
      stop("Unknown 'model' argument specified")

    }
  }


  x <- x %>%
    dplyr::rowwise(.) %>%
    dplyr::mutate(vol = ifelse(model == "1hl", sphere(d_one),
                               ifelse(model == "2sl", half_sphere(d_one),
                                      ifelse(model == "3hl", spheroid(h, d_one),
                                             ifelse(model == "4hl" || model == "5hl", cone(h, d_one),
                                                    ifelse(model == "6fs", paraboloid(h, d_one),
                                                           ifelse(model == "7fs",dome(h, d_one),
                                                                  ifelse(model == "8hl", cylinder(h, d_one),
                                                                         ifelse(model == "10hl", ellipsoid(h, d_one, d_two),
                                                                                ifelse(model == "11fs" || model == "12v", elliptic_cone(h, d_one, d_two),
                                                                                       ifelse(model == "13hlsl",gomphonemoid(h, d_one, d_two),
                                                                                              ifelse(model == "14hl" || model == "15hl", elliptic_prism(h, d_one, d_two),
                                                                                                     ifelse(model == "17fs", dypyramid(h, length, width),
                                                                                                            ifelse(model == "axh", axh(area, h),.))))))))))))))


  if (!is.null(pco) || "pco" %in% colnames(x)) {
    result <- x %>%
      tibble::as.tibble() %>%
      dplyr::mutate(vol = vol, biovol = vol * pco)

    result

  } else {
    result <- x %>%
      tibble::as.tibble() %>%
      dplyr::mutate(vol = vol)

    result

  }

  return(result)


}
