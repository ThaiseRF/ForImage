library(readr)
library(plyr)

qu <- read_csv("data-raw/quinqueloculina.csv", col_types =
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
                      biomassa = "_",
                      comprimento = col_double(),
                      largura = col_double())
)

qu$prot <- qu$prot/100

qu$model <- ifelse(is.na(qu$comprimento), "10hl", "17fs")

quinqueloculina <- plyr::rename(qu, c(species = "species",
                                ind = "ind",
                                altura  = "h",
                                d1 = "d_one",
                                d2 = "d_two",
                                ar = "area",
                                prot = "pco",
                                comprimento = "length",
                                largura = "width",
                                model = "model")
)


usethis::use_data(quinqueloculina, overwrite = TRUE)
