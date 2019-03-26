library(readr)
library(plyr)

lo <- read_csv("data-raw/loxostomina.csv", col_types =
                 list(ind = col_double(),
                      d1 = col_double(),
                      altura = col_double(),
                      d2 = col_double(),
                      ar = col_double(),
                      arp = "_",
                      prot = col_double(),
                      volume = "_",
                      biov = "_",
                      biomassa = "_")
)

lo$prot <- lo$prot/100

loxostomina <- plyr::rename(lo, c(ind = "ind",
                            d1 = "d_one",
                            altura  = "h",
                            d2 = "d_two",
                            ar = "area",
                            prot = "pco")
)


usethis::use_data(loxostomina, overwrite = TRUE)
