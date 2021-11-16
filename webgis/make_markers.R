library(tigris)
library(tidyverse)
library(sf)
library(leaflet)
options(tigris_use_cache = TRUE)

tarrant <- counties("TX", cb = TRUE) %>%
  filter(NAME == "Tarrant")

samp <- st_sample(tarrant, size = 10000) %>%
  st_sf() %>%
  mutate(id = 1:nrow(.)) %>%
  st_transform(4326)

l1 <- leaflet() %>%
  mapboxapi::addMapboxTiles("streets-v11", "mapbox") %>%
  addMarkers(data = samp, clusterOptions = markerClusterOptions())

htmlwidgets::saveWidget(l1, "marker_cluster.html")