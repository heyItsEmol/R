# data_intake
# read in national parks dataset from Kaggle

library(tidyverse)

# read parks.csv
df_parks <- read_csv("national_parks/parks.csv")

# read species.csv
df_species <- read_csv("national_parks/species.csv")

# EDA

# unique values of abundance

df_species %>%
  select(Abundance) %>%
  unique()
