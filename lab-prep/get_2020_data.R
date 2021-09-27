library(tidycensus)
library(sf)
library(tidyverse)

v2020 <- load_variables(2020, "pl")

# Get the demographic data at the tract level
dfw_counties <- c("Collin County", "Dallas", "Denton", 
                  "Ellis", "Hunt", "Kaufman", "Rockwall", 
                  "Johnson", "Parker", "Tarrant", "Wise")

vars <- c(
  Hispanic = "P2_002N",
  White = "P2_005N",
  Black = "P2_006N",
  Asian = "P2_008N",
  AIAN = "P2_007N",
  HIPI = "P2_009N",
  Other = "P2_010N",
  Multiple = "P2_011N"
)

dfw_race <- get_decennial(
  geography = "tract",
  variables = vars,
  state = "TX",
  county = dfw_counties,
  year = 2020,
  geometry = TRUE,
  output = "wide"
) %>%
  st_transform(32138) %>%
  select(-NAME)

st_write(dfw_race, "lab-prep/dfw_race_2020.gpkg")

# Get the county and road boundaries
dfw_counties <- tigris::counties("TX", cb = TRUE, resolution = "5m", year = 2020) %>%
  filter(str_sub(GEOID, 3, 5) %in% unique(str_sub(dfw_race$GEOID, 3, 5))) %>%
  select(GEOID, NAME) %>%
  st_transform(32138)

dfw_highways <- tigris::primary_roads(year = 2020) %>%
  st_transform(32138) %>%
  st_intersection(st_union(dfw_counties))

dfw_interstates <- dfw_highways %>%
  filter(RTTYP == "I") %>%
  transmute(INTERSTATE = str_remove_all(FULLNAME, " ")) %>%
  filter(!INTERSTATE %in% c("I-30Hov", "I-35N", "I-820(ExpressLanes)", "WI-20", "EI-30"))

st_write(dfw_counties, "lab-prep/dfw_counties.gpkg")
st_write(dfw_interstates, "lab-prep/dfw_interstates.gpkg")