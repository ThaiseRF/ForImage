library(readr)
library(plyr)

no <- read_csv("data-raw/nonionella.csv", col_types =
                 list(species = col_character(),
                      ind = col_double(),
                      altura = col_double(),
                      d1 = col_double(),
                      d2 = col_double(),
                      ar = col_double(),
                      arp = "_",
                      prot = col_double(),
                      volume = "_",
                      biov = "_",
                      biomassa = "_")
)

no$prot <- no$prot/100

nonionella <- plyr::rename(no, c(species = "species",
                           ind = "ind",
                           altura  = "h",
                           d1 = "d_one",
                           d2 = "d_two",
                           ar = "area",
                           prot = "pco")
)


usethis::use_data(nonionella, overwrite = TRUE)
