library(mapedit)
library(mapview)
library(maptools)
library(shiny)
library(raster)
library(sf)
library(affinething)

library(sp)
library(rgdal)
library(rgeos)



# use this to set map extent
world <- sf::st_as_sf(maps::map('world', plot = FALSE, fill = TRUE))
world1 <- world[world$ID != 'Antarctica',]
map <- viewExtent(world1, alpha.regions = 0, stroke = FALSE)
