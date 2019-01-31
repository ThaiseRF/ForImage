library(readr)
library(plyr)


am <- read_csv("data-raw/amphistegina.csv", col_types =
                 list(ind = col_double(),
                      altura = col_double(),
                      d1 = col_double(),
                      ar = col_double(),
                      arp = "_",
                      prot = col_double(),
                      volume = "_",
                      biov = "_",
                      biomassa = "_",
                      x = "_")
               )

am$prot <- am$prot/100

amphistegina <- rename(am, c(ind = "ind",
                             altura  = "h",
                             d1 = "d_one",
                             ar = "area",
                             prot = "pop")
                       )


devtools::use_data(amphistegina, overwrite = TRUE)
