library(ncdf4)
library(raster)
library(ggplot2)
library(RStoolbox)
library(viridis)
library(utils)
library(writexl)
library(maps)

setwd("/Users/Ricky/Documents/mediaNDVI")

ndvi2018_04 <- raster("c_gls_NDVI300-NDVI_201804110000_CUSTOM_PROBAV_V1.0.1.tiff")

p2 <- ggplot() + geom_raster(ndvi2018_04, mapping = aes(x=x, y=y, fill=c_gls_NDVI300.NDVI_201804110000_CUSTOM_PROBAV_V1.0.1)) 
+ scale_fill_viridis(option="mako", direction=1, alpha=0.8) + ggtitle("NDVI values - April 2018") + labs(fill = "NDVI")
p2 <- p2 + geom_text(aes(x = 10.924479, y = 44.645170, label = "Modena"))
p2
ggsave("mappa3.png", plot = p2)

Ottieni i dati geografici delle province italiane
map_italia <- map("italy")
pita <- ggplot(map_italia, aes(x = long, y = lat, group = group)) + geom_polygon(fill = "transparent", color = "black") + coord_fixed(ratio = 1) + theme_minimal()
