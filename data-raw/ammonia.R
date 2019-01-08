library(readr)
library(plyr)


am <- read_csv("data-raw/ammonia.csv", col_types =
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

am$prot <- am$prot/100

ammonia <- rename(am, c(species = "species",
                        ind = "ind",
                        altura  = "h1",
                        d1 = "d_one",
                        d2 = "d_two",
                        ar = "area",
                        prot = "pop")
)


devtools::use_data(ammonia, overwrite = TRUE)
