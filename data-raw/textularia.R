library(readr)
library(plyr)

te <- read_csv("data-raw/textularia.csv", col_types =
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

te$prot <- te$prot/100

textularia <- rename(te, c(species = "species",
                           ind = "ind",
                           altura  = "h",
                           d1 = "d_one",
                           d2 = "d_two",
                           ar = "area",
                           prot = "pop")
)


devtools::use_data(textularia, overwrite = TRUE)
