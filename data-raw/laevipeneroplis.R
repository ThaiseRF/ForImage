library(readr)
library(plyr)

la <- read_csv("data-raw/laevipeneroplis.csv", col_types =
                 list(species = col_character(),
                      ind = col_double(),
                      altura = col_double(),
                      d1 = col_double(),
                      ar = col_double(),
                      arp = "_",
                      prot = col_double(),
                      d2 = col_double(),
                      volume = "_",
                      biov = "_",
                      biomassa = "_")
)

la$prot <- la$prot/100

laevipeneroplis <- rename(la, c(species = "species",
                                ind = "ind",
                                altura  = "h",
                                d1 = "d_one",
                                ar = "area",
                                prot = "pco",
                                d2 = "d_two")
)


usethis::use_data(laevipeneroplis, overwrite = TRUE)
