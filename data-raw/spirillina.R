library(readr)
library(plyr)

sp <- read_csv("data-raw/spirillina.csv", col_types =
                 list(ind = col_double(),
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

se$prot <- se$prot/100

spirillina <- rename(sp, c(ind = "ind",
                           altura  = "h",
                           d1 = "d_one",
                           d2 = "radius",
                           ar = "area",
                           prot = "pop")
)


devtools::use_data(spirillina, overwrite = TRUE)