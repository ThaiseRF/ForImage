library(readr)
library(plyr)


an <- read_csv("data-raw/angulogerina.csv", col_types =
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

an$prot <- an$prot/100

angulogerina <- rename(an, c(ind = "ind",
                             altura  = "h_one",
                             d1 = "d_one",
                             d2 = "d_two",
                             ar = "area",
                             prot = "pop")
)


devtools::use_data(angulogerina, overwrite = TRUE)
