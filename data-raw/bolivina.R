library(readr)
library(plyr)

bo <- read_csv("data-raw/bolivina.csv", col_types =
                 list(species = col_character(),
                      ind = col_double(),
                      d_one = col_double(),
                      altura = col_double(),
                      d_two = col_double(),
                      ar = col_double(),
                      arp = "_",
                      prot = col_double(),
                      volume = "_",
                      biov = "_",
                      biomassa = "_")
)

bo$prot <- bo$prot/100

bolivina <- rename(bo, c(species = "species",
                        ind = "ind",
                        d_one = "d_one",
                        altura  = "h",
                        d_two = "d_two",
                        ar = "area",
                        prot = "pco")
)


usethis::use_data(bolivina, overwrite = TRUE)
