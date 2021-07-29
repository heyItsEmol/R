# data_intake
# read in national parks dataset from Kaggle

library(tidyverse)

# Data Intake ----
# Observations
df_observations <- read_csv("np_data/observations.csv")
# Species Info
df_species_info <- read_csv("np_data/species_info.csv")
# Species
df_species <- read_csv("np_data/species.csv")
# Parks
df_parks <- read_csv("np_data/parks.csv")

# EDA ----
df_joint_dataset <- df_species %>%
  select(
    scientific_name = "Scientific Name"
    , common_name = "Common Names"
    , occurence = "Occurrence"
    , nativness = "Nativeness"
    , abundance = "Abundance"
    , conservaion_status = "Conservation Status"
  ) %>%
  right_join(
    df_observations
    , by = "scientific_name"
  )


