
# Useful packages -----------------------------------------------
library(readr)
library(data.table)
library(tidyr)
library(dplyr)
library(purrr)
library(tibble)

# Find and read all .csv files -----------------------------------------
files <- list.files(path = "data-raw",
                     pattern = "*.csv",
                     full.names = T)

genera <- lapply(files, read_csv)
names(genera) <- basename(files)

# Get models for each genera ----------
model <- genera$genera_model.csv$model

# Cut model from list ------------
genera[["genera_model.csv"]] <- NULL

# Mean and sd for all genera POP to apply in biovolume calculus ------
mean <- lapply(lapply(genera, `[[`, "prot"), mean)
sd <- lapply(lapply(genera, `[[`, "prot"), sd)


data_pop <- bind_rows(mean, sd) %>%
  rownames_to_column %>%
  gather(var, value,  -rowname) %>%
  spread(rowname, value) %>%
  separate(var, into = c("name", "csv")) %>%
  select(-csv) %>%
  mutate(model = model)

names(data_pop) <- c("genera", "mean", "sd", "model")

head(data_pop)

devtools::use_data(data_pop, overwrite = T)

