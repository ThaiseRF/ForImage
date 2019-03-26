library(readr)
library(plyr)

pa <- read_csv("data-raw/patellina.csv", col_types =
                 list(ind = col_double(),
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

pa$prot <- pa$prot/100

patellina <- rename(pa, c(ind = "ind",
                          altura  = "h",
                          d1 = "d_one",
                          raio = "radius",
                          ar = "area",
                          prot = "pco")
)


usethis::use_data(patellina, overwrite = TRUE)
