library(readr)
library(plyr)

re <- read_csv("data-raw/rectocibicides.csv", col_types =
                 list(ind = col_double(),
                      altura = col_double(),
                      ar = col_double(),
                      arp = "_",
                      prot = col_double(),
                      volume = "_",
                      biov = "_",
                      biomassa = "_")
)

re$prot <- re$prot/100

rectocibicides <- rename(re, c(ind = "ind",
                               altura  = "h",
                               ar = "area",
                               prot = "pop")
)


devtools::use_data(rectocibicides, overwrite = TRUE)
