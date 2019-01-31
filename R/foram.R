#' Foraminifeal genera data for \code{forImage} examples
#'
#' This dataset contains protoplasm occupancy mean and standart deviation data of 72 foraminifera genera.
#' These genera data are originally from previous work - Freitas et al. 2019
#' @docType data
#' @keywords dataset
#' @format A data frame with 72 rows and 3 variables:
#' \describe{
#'   \item{genera}{foraminifera genera}
#'   \item{mean}{mean protoplasm occupancy percentage \code{(pop)}}
#'   \item{sd}{standard deviation of mean \code{(pop)}}
#' }
#'
#' @details foraminifera genera with \code{(pop)} available:
#' \tabular{rlll}{
#'  \tab"ammonia"\tab"amphis"\tab"angulogerina"\cr
#'  \tab"archaias"\tab"asterotrochammina"\tab"bolivina"\cr
#'  \tab"buliminella"\tab"cancris"\tab"caronia"\cr
#'  \tab"cassidulina"\tab"cibicides"\tab"cibicidoides"\cr
#'  \tab"cornuspira"\tab"cribroelphidium"\tab"cymbaloporetta"\cr
#'  \tab"deuterammina"\tab"disconorbis"\tab"discorbia"\cr
#'  \tab"discorbinella"\tab"discorbis"\tab"discorbitina"\cr
#'  \tab"edentostomina"\tab"elphidium"\tab"eoeponidella"\cr
#'  \tab"eponides"\tab"fissurina"\tab"fursenkoina"\cr
#'  \tab"glabratella"\tab"globocassidulina"\tab"hanzawaia"\cr
#'  \tab"hauerina"\tab"heronallenia"\tab"laevipeneroplis"\cr
#'  \tab"lepidodeuterammina"\tab"loxostomina"\tab"miliolinella"\cr
#'  \tab"mullinoides"\tab"mychostomina"\tab"neoconorbina"\cr
#'  \tab"nonionella"\tab"nonioninoides"\tab"pararotalia"\cr
#'  \tab"paratrochammina"\tab"patellina"\tab"planispirillina"\cr
#'  \tab"planorbulina"\tab"planulina"\tab"pyrgo"\cr
#'  \tab"quinqueloculina"\tab"rectocibicides"\tab"remaneicella"\cr
#'  \tab"reophax"\tab"rosalina"\tab"rotaliammina"\cr
#'  \tab"rotorbinella"\tab"rotorbis"\tab"sahulia"\cr
#'  \tab"sigmavirgulina"\tab"siphonina"\tab"sorites"\cr
#'  \tab"spirillina"\tab"spiroloculina"\tab"spirorbina"\cr
#'  \tab"tetrataxiella"\tab"textularia"\tab"triloculina"\cr
#'  \tab"triloculinella"\tab"trochammina"\tab"webbinella"\cr
#'  \tab"wiesnerella"
#' }
#'
#' @name data_pop
NULL

#' Foraminifeal photomicrographs for \code{forImage} examples
#'
#'
#' This dataset contains image files of several foraminiferal genera.
#' These files are originally from previous work - Freitas et al. (2019)
#'
#' @docType data
#' @keywords dataset
#' @format Image objects with variable dimension and resolution.
#'
#' @name exampleImage
NULL

#' Ammonia size data
#'
#' A dataset containing the size and other attributes of species from genus Ammonia.
#'  The variables are as follows:
#'
#' @format A data frame with 867 rows and 7 variables:
#' \describe{
#'   \item{species}{species of genus Ammonia from which raw data were gathered}
#'   \item{ind}{number of individuals by species}
#'   \item{h}{test height in μm (82.05--390.65)}
#'   \item{d_one}{test minor diameter in  μm (20--220)}
#'   \item{d_two}{test major diameter in  μm (75.1--364.6)}
#'   \item{area}{test surface area in μm2 (4438--107903)}
#'   \item{pop}{test protoplasm occupancy percentage (11--100)}
#' }
"ammonia"

#' Amphistegina size data
#'
#' A dataset containing the size and other attributes of genus Amphistegina
#'  The variables are as follows:
#'
#' @format A data frame with 167 rows and 5 variables:
#' \describe{
#'   \item{ind}{number of individuals}
#'   \item{h}{test height in μm (60.0--579.0)}
#'   \item{d_one}{test diameter in  μm (111.3--1193.1)}
#'   \item{area}{test surface area in μm2 (9722--3027282)}
#'   \item{pop}{test protoplasm occupancy percentage (3.408--100)}
#' }
"amphistegina"

#' Angulogerina size data
#'
#' A dataset containing the size and other attributes of species from genus Angulogerina.
#'  The variables are as follows:
#'
#' @format A data frame with 100 rows and 6 variables:
#' \describe{
#'   \item{ind}{number of individuals}
#'   \item{h}{test height in μm (81.75--380.91)}
#'   \item{d_one}{test minor diameter in  μm (34--156)}
#'   \item{d_two}{test major diameter in  μm (66.04--237.34)}
#'   \item{area}{test surface area in μm2 (4654--41915)}
#'   \item{pop}{test protoplasm occupancy percentage (6.818--100)}
#' }
"angulogerina"

#' Asterotrochammina size data
#'
#' A dataset containing the size and other attributes of species from genus Asterotrochammina.
#'  The variables are as follows:
#'
#' @format A data frame with 335 rows and 7 variables:
#' \describe{
#'   \item{species}{species of genus Asterotrochammina from which raw data were gathered}
#'   \item{ind}{number of individuals by species}
#'   \item{h}{test height in μm (12--72)}
#'   \item{d_one}{test minor diameter in  μm (77.86--265.50)}
#'   \item{radius}{test radius in  μm (38.93--132.75)}
#'   \item{area}{test surface area in μm2 (4761--57577)}
#'   \item{pop}{test protoplasm occupancy percentage (15--100)}
#' }
"asterotrochammina"

#' Bolivina size data
#'
#' A dataset containing the size and other attributes of species from genus Bolivina.
#'  The variables are as follows:
#'
#' @format A data frame with 628 rows and 7 variables:
#' \describe{
#'   \item{species}{species of genus Bolivina from which raw data were gathered}
#'   \item{ind}{number of individuals by species}
#'   \item{d_one}{test minor diameter in μm (72.37--502.12)}
#'   \item{h}{test height in μm (12.5--83.0)}
#'   \item{d_two}{test major diameter in  μm (60.60--226.21)}
#'   \item{area}{test surface area in μm2 (3187--72244)}
#'   \item{pop}{test protoplasm occupancy percentage (9.72--100)}
#' }
"bolivina"

#' Cibicidoides size data
#'
#' A dataset containing the size and other attributes of species from genus Cibicidoides.
#'  The variables are as follows:
#'
#' @format A data frame with 118 rows and 7 variables:
#' \describe{
#'   \item{species}{species of genus Cibicidoides from which raw data were gathered}
#'   \item{ind}{number of individuals by species}
#'   \item{h}{test height in μm (24--117)}
#'   \item{d_one}{test minor diameter in  μm (76.46--266.85)}
#'   \item{radius}{test radius in  μm (38.23--133.43)}
#'   \item{area}{test surface area in μm2 (4591--55928)}
#'   \item{pop}{test protoplasm occupancy percentage (11.87--100)}
#' }
"cibicidoides"

#' Discorbinella size data
#'
#' A dataset containing the size and other attributes of species from genus Discorbinella.
#'  The variables are as follows:
#'
#' @format A data frame with 318 rows and 7 variables:
#' \describe{
#'   \item{species}{species of genus Discorbinella from which raw data were gathered}
#'   \item{ind}{number of individuals by species}
#'   \item{h}{test height in μm (15--72)}
#'   \item{d_one}{test minor diameter in  μm (67.69--197.43)}
#'   \item{radius}{test radius in  μm (33.85--98.71)}
#'   \item{area}{test surface area in μm2 (3599--30614)}
#'   \item{pop}{test protoplasm occupancy percentage (9.673--100)}
#' }
"discorbinella"

#' Laevipeneroplis size data
#'
#' A dataset containing the size and other attributes of species from genus Laevipeneroplis.
#'  The variables are as follows:
#'
#' @format A data frame with 79 rows and 7 variables:
#' \describe{
#'   \item{species}{species of genus Laevipeneroplis from which raw data were gathered}
#'   \item{ind}{number of individuals by species}
#'   \item{h}{test height in μm (40--633.9)}
#'   \item{d_one}{test minor diameter in  μm (47--624.2)}
#'   \item{area}{test surface area in μm2 (8827--306012)}
#'   \item{pop}{test protoplasm occupancy percentage (15.24--100)}
#'   \item{d_two}{test major diameter in  μm (169.2--544.0) - The NA's related to one species of this genus that don't required this measure}
#' }
"laevipeneroplis"

#' Loxostomina size data
#'
#' A dataset containing the size and other attributes of species from genus Loxostomina.
#'  The variables are as follows:
#'
#' @format A data frame with 31 rows and 7 variables:
#' \describe{
#'   \item{ind}{number of individuals by species}
#'   \item{d_one}{test minor diameter in μm (101.4--534.6)}
#'   \item{h}{test height in μm (28.0--80.0)}
#'   \item{d_two}{test major diameter in  μm (89.76--261.17)}
#'   \item{area}{test surface area in μm2 (6636--76089)}
#'   \item{pop}{test protoplasm occupancy percentage (9.88--100)}
#' }
"loxostomina"

#' Nonionella size data
#'
#' A dataset containing the size and other attributes of species from genus Nonionella.
#'  The variables are as follows:
#'
#' @format A data frame with 208 rows and 7 variables:
#' \describe{
#'   \item{species}{species of genus Nonionella from which raw data were gathered}
#'   \item{ind}{number of individuals by species}
#'   \item{d_one}{test minor diameter in μm (93.39--564.98)}
#'   \item{h}{test height in μm (19.50--294.00)}
#'   \item{d_two}{test major diameter in  μm (82.99--547.67)}
#'   \item{area}{test surface area in μm2 (5783--222371)}
#'   \item{pop}{test protoplasm occupancy percentage (15.51--100)}
#' }
"nonionella"

#' Patellina size data
#'
#' A dataset containing the size and other attributes of species from genus Patellina.
#'  The variables are as follows:
#'
#' @format A data frame with 79 rows and 6 variables:
#' \describe{
#'   \item{ind}{number of individuals by species}
#'   \item{h}{test height in μm (24--66)}
#'   \item{d_one}{test minor diameter in μm (84.84--247.46)}
#'   \item{radius}{test radius in  μm (42.42--123.73)}
#'   \item{area}{test surface area in μm2 (5653--87838)}
#'   \item{pop}{test protoplasm occupancy percentage (9.94--100)}
#' }
"patellina"

#' Quinqueloculina size data
#'
#' A dataset containing the size and other attributes of species from genus Quinqueloculina. As this genus has a wide morphological variation, two types of models can be applied to calculate its volume. Therefore the variables are grouped by model as well as by species. It is also an example that the \code{model} argument can be a data frame column.
#'  The variables are as follows:
#'
#' @format A data frame with 688 rows and 10 variables:
#' \describe{
#'   \item{species}{species of genus Quinqueloculina from which raw data were gathered}
#'   \item{ind}{number of individuals by species}
#'   \item{h}{test height in μm (107.4--944.4)}
#'   \item{d_one}{test minor diameter in μm (26.94--389.73)}
#'   \item{d_two}{test major diameter in  μm (18.52--662.23)}
#'   \item{area}{test surface area in μm2 (6294--431271)}
#'   \item{pop}{test protoplasm occupancy percentage (13.76--100)}
#'   \item{length}{test length in μm (44.02--609.00)}
#'   \item{width}{test width in μm (83.72--688.32)}
#'   \item{model}{adequated geometric model ('10hl'--'17fs')}
#' }
"quinqueloculina"


#' Rectocibicides size data
#'
#' A dataset containing the size and other attributes of genus Rectocibicides
#'  The variables are as follows:
#'
#' @format A data frame with 199 rows and 4 variables:
#' \describe{
#'   \item{ind}{number of individuals}
#'   \item{h}{test height in μm (22.00--101.50)}
#'   \item{area}{test surface area in μm2 (3450--674280)}
#'   \item{pop}{test protoplasm occupancy percentage (10--100)}
#'
#' }
"rectocibicides"

#' Spirillina size data
#'
#' A dataset containing the size and other attributes of species from genus Spirillina
#'  The variables are as follows:
#'
#' @format A data frame with 42 rows and 6 variables:
#' \describe{
#'   \item{ind}{number of individuals by species}
#'   \item{h}{test height in μm (12--44)}
#'   \item{d_one}{test minor diameter in μm (73.71--105.14)}
#'   \item{radius}{test radius in  μm (36.86--123.73)}
#'   \item{area}{test surface area in μm2 (4268--34730)}
#'   \item{pop}{test protoplasm occupancy percentage (7.10--100)}
#' }
"spirillina"

#' Textularia size data
#'
#' A dataset containing the size and other attributes of species from genus Textularia
#'  The variables are as follows:
#'
#' @format A data frame with 84 rows and 7 variables:
#' \describe{
#'   \item{species}{species of genus Textularia from which raw data were gathered}
#'   \item{ind}{number of individuals by species}
#'   \item{h}{test height in μm (113.6--1034.4)}
#'   \item{d_one}{test minor diameter in μm (40--306)}
#'   \item{d_two}{test major diameter in  μm (103.8--552.6)}
#'   \item{area}{test surface area in μm2 (8235--336929)}
#'   \item{pop}{test protoplasm occupancy percentage (10.46--100)}
#' }
"textularia"
