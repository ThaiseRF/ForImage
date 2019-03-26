library(readr)
library(plyr)

cb <- read_csv("data-raw/cibicidoides.csv", col_types =
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

cb$prot <- cb$prot/100

cibicidoides <- rename(cb, c(species = "species",
                        ind = "ind",
                        altura  = "h",
                        d1 = "d_one",
                        raio = "radius",
                        ar = "area",
                        prot = "pco")
)


usethis::use_data(cibicidoides, overwrite = TRUE)
