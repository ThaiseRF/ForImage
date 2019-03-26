library(readr)
library(plyr)


as <- read_csv("data-raw/asterotrochammina.csv", col_types =
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

as$prot <- as$prot/100

asterotrochammina <- rename(as, c(species = "species",
                                  ind = "ind",
                                  altura  = "h",
                                  d1 = "d_one",
                                  raio = "radius",
                                  ar = "area",
                                  prot = "pco")
)


usethis::use_data(asterotrochammina, overwrite = TRUE)
