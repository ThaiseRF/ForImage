library(readr)
library(plyr)

di <- read_csv("data-raw/discorbinella.csv", col_types =
                 list(species = col_character(),
                      ind = col_double(),
                      altura = col_double(),
                      d1 = col_double(),
                      raio = col_double(),
                      ar = col_double(),
                      arp = "_",
                      prot = col_double(),
                      volume = "_",
                      biov = "_",
                      biomassa = "_")
)

di$prot <- di$prot/100

discorbinella <- plyr::rename(di, c(species = "species",
                              ind = "ind",
                              altura  = "h",
                              d1 = "d_one",
                              raio = "radius",
                              ar = "area",
                              prot = "pop")
)


devtools::use_data(discorbinella, overwrite = TRUE)
