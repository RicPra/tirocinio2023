# Codice per calcolare la media dei valori NDVI

# Mi richiamo tutti i pacchetti che mi servono
library(ncdf4)
library(raster)
library(ggplot2)
library(RStoolbox)
library(viridis)
library(utils)
library(writexl)

# Setto la work directory
setwd("/Users/Ricky/Documents/mediaNDVI")

# Mi salvo le mie mappine
ndvi2015_10 <- raster("c_gls_NDVI300-NDVI_201510110000_CUSTOM_PROBAV_V1.0.1.tiff")
ndvi2015_11 <- raster("c_gls_NDVI300-NDVI_201511110000_CUSTOM_PROBAV_V1.0.1.tiff")
ndvi2015_12 <- raster("c_gls_NDVI300-NDVI_201512110000_CUSTOM_PROBAV_V1.0.1.tiff")
ndvi2016_01 <- raster("c_gls_NDVI300-NDVI_201601110000_CUSTOM_PROBAV_V1.0.1.tiff")
ndvi2016_02 <- raster("c_gls_NDVI300-NDVI_201602110000_CUSTOM_PROBAV_V1.0.1.tiff")
ndvi2016_03 <- raster("c_gls_NDVI300-NDVI_201603110000_CUSTOM_PROBAV_V1.0.1.tiff")
ndvi2016_04 <- raster("c_gls_NDVI300-NDVI_201604110000_CUSTOM_PROBAV_V1.0.1.tiff")
ndvi2016_05 <- raster("c_gls_NDVI300-NDVI_201605110000_CUSTOM_PROBAV_V1.0.1.tiff")
ndvi2016_06 <- raster("c_gls_NDVI300-NDVI_201606110000_CUSTOM_PROBAV_V1.0.1.tiff")
ndvi2016_07 <- raster("c_gls_NDVI300-NDVI_201607110000_CUSTOM_PROBAV_V1.0.1.tiff")
ndvi2016_08 <- raster("c_gls_NDVI300-NDVI_201608110000_CUSTOM_PROBAV_V1.0.1.tiff")
ndvi2016_09 <- raster("c_gls_NDVI300-NDVI_201609110000_CUSTOM_PROBAV_V1.0.1.tiff")
ndvi2016_10 <- raster("c_gls_NDVI300-NDVI_201610110000_CUSTOM_PROBAV_V1.0.1.tiff")
ndvi2016_11 <- raster("c_gls_NDVI300-NDVI_201611110000_CUSTOM_PROBAV_V1.0.1.tiff")
ndvi2016_12 <- raster("c_gls_NDVI300-NDVI_201612110000_CUSTOM_PROBAV_V1.0.1.tiff")
ndvi2017_01 <- raster("c_gls_NDVI300-NDVI_201701110000_CUSTOM_PROBAV_V1.0.1.tiff")
ndvi2017_02 <- raster("c_gls_NDVI300-NDVI_201702110000_CUSTOM_PROBAV_V1.0.1.tiff")
ndvi2017_03 <- raster("c_gls_NDVI300-NDVI_201703110000_CUSTOM_PROBAV_V1.0.1.tiff")
ndvi2017_04 <- raster("c_gls_NDVI300-NDVI_201704110000_CUSTOM_PROBAV_V1.0.1.tiff")
ndvi2017_05 <- raster("c_gls_NDVI300-NDVI_201705110000_CUSTOM_PROBAV_V1.0.1.tiff")
ndvi2017_06 <- raster("c_gls_NDVI300-NDVI_201706110000_CUSTOM_PROBAV_V1.0.1.tiff")
ndvi2017_07 <- raster("c_gls_NDVI300-NDVI_201707110000_CUSTOM_PROBAV_V1.0.1.tiff")
ndvi2017_08 <- raster("c_gls_NDVI300-NDVI_201708110000_CUSTOM_PROBAV_V1.0.1.tiff")
ndvi2017_09 <- raster("c_gls_NDVI300-NDVI_201709110000_CUSTOM_PROBAV_V1.0.1.tiff")
ndvi2017_10 <- raster("c_gls_NDVI300-NDVI_201710110000_CUSTOM_PROBAV_V1.0.1.tiff")
ndvi2017_11 <- raster("c_gls_NDVI300-NDVI_201711110000_CUSTOM_PROBAV_V1.0.1.tiff")
ndvi2017_12 <- raster("c_gls_NDVI300-NDVI_201712110000_CUSTOM_PROBAV_V1.0.1.tiff")
ndvi2018_01 <- raster("c_gls_NDVI300-NDVI_201801110000_CUSTOM_PROBAV_V1.0.1.tiff")
ndvi2018_02 <- raster("c_gls_NDVI300-NDVI_201802110000_CUSTOM_PROBAV_V1.0.1.tiff")
ndvi2018_03 <- raster("c_gls_NDVI300-NDVI_201803110000_CUSTOM_PROBAV_V1.0.1.tiff")
ndvi2018_04 <- raster("c_gls_NDVI300-NDVI_201804110000_CUSTOM_PROBAV_V1.0.1.tiff")
ndvi2018_05 <- raster("c_gls_NDVI300-NDVI_201805110000_CUSTOM_PROBAV_V1.0.1.tiff")
ndvi2018_06 <- raster("c_gls_NDVI300-NDVI_201806110000_CUSTOM_PROBAV_V1.0.1.tiff")
ndvi2018_07 <- raster("c_gls_NDVI300-NDVI_201807110000_CUSTOM_PROBAV_V1.0.1.tiff")
ndvi2018_08 <- raster("c_gls_NDVI300-NDVI_201808110000_CUSTOM_PROBAV_V1.0.1.tiff")
ndvi2018_09 <- raster("c_gls_NDVI300-NDVI_201809110000_CUSTOM_PROBAV_V1.0.1.tiff")
ndvi2018_10 <- raster("c_gls_NDVI300-NDVI_201810110000_CUSTOM_PROBAV_V1.0.1.tiff")
ndvi2018_11 <- raster("c_gls_NDVI300-NDVI_201811110000_CUSTOM_PROBAV_V1.0.1.tiff")
ndvi2018_12 <- raster("c_gls_NDVI300-NDVI_201812110000_CUSTOM_PROBAV_V1.0.1.tiff")
ndvi2019_01 <- raster("c_gls_NDVI300-NDVI_201901110000_CUSTOM_PROBAV_V1.0.1.tiff")
ndvi2019_02 <- raster("c_gls_NDVI300-NDVI_201902110000_CUSTOM_PROBAV_V1.0.1.tiff")
ndvi2019_03 <- raster("c_gls_NDVI300-NDVI_201903110000_CUSTOM_PROBAV_V1.0.1.tiff")
ndvi2019_04 <- raster("c_gls_NDVI300-NDVI_201904110000_CUSTOM_PROBAV_V1.0.1.tiff")
ndvi2019_05 <- raster("c_gls_NDVI300-NDVI_201905110000_CUSTOM_PROBAV_V1.0.1.tiff")
ndvi2019_06 <- raster("c_gls_NDVI300-NDVI_201906110000_CUSTOM_PROBAV_V1.0.1.tiff")
ndvi2019_07 <- raster("c_gls_NDVI300-NDVI_201907110000_CUSTOM_PROBAV_V1.0.1.tiff")
ndvi2019_08 <- raster("c_gls_NDVI300-NDVI_201908110000_CUSTOM_PROBAV_V1.0.1.tiff")
ndvi2019_09 <- raster("c_gls_NDVI300-NDVI_201909110000_CUSTOM_PROBAV_V1.0.1.tiff")
ndvi2019_10 <- raster("c_gls_NDVI300-NDVI_201910110000_CUSTOM_PROBAV_V1.0.1.tiff")
ndvi2019_11 <- raster("c_gls_NDVI300-NDVI_201911110000_CUSTOM_PROBAV_V1.0.1.tiff")
ndvi2019_12 <- raster("c_gls_NDVI300-NDVI_201912110000_CUSTOM_PROBAV_V1.0.1.tiff")
ndvi2020_01 <- raster("c_gls_NDVI300-NDVI_202001110000_CUSTOM_PROBAV_V1.0.1.tiff")
ndvi2020_02 <- raster("c_gls_NDVI300-NDVI_202002110000_CUSTOM_PROBAV_V1.0.1.tiff")

# Salvo il file con le coordinate (nota: non c'è intestazione e il separatore nel mio caso è ";")
coord <- read.csv("coordinate.csv", header=FALSE, sep=";")
# Me le salvo come matrici e vedo cosa esce
coordinate <- as.matrix(coord)
coordinate

coordinateNoDate <- matrix(0, nrow = 157, ncol = 2)

# Converti gli elementi e aggiornali nella nuova matrice
for (i in 1:157) {
  for (j in 1:2) {
    coordinateNoDate[i, j] <- as.numeric(coordinate[i, j+1])
  }
}
coordinateNoDate <- coordinateNoDate[, c(2,1)]
coordinateNoDate

mediaNDVI <- 0
mieiNDVImedi <- c()

for (x in 1:157){
  if (coordinate[x,1]=="Oct-16") {
    dodiciNDVI <- extract(ndvi2015_10, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2015_11, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2015_12, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2016_01, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2016_02, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2016_03, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2016_04, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2016_05, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2016_06, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2016_07, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2016_08, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2016_09, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
   
    mediaNDVI <- mediaNDVI/12
    mieiNDVImedi[x] <- mediaNDVI
  
  } else if (coordinate[x,1]=="Nov-16") {
    dodiciNDVI <- extract(ndvi2015_11, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2015_12, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2016_01, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2016_02, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2016_03, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2016_04, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2016_05, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2016_06, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2016_07, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2016_08, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2016_09, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2016_10, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
   
    mediaNDVI <- mediaNDVI/12
    mieiNDVImedi[x] <- mediaNDVI
    
  }  else if (coordinate[x,1]=="Dec-16") {
    dodiciNDVI <- extract(ndvi2015_12, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2016_01, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2016_02, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2016_03, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2016_04, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2016_05, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2016_06, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2016_07, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2016_08, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2016_09, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2016_10, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2016_11, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
   
    mediaNDVI <- mediaNDVI/12
    mieiNDVImedi[x] <- mediaNDVI
    
  }  else if (coordinate[x,1]=="Jan-17") {
    dodiciNDVI <- extract(ndvi2016_01, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2016_02, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2016_03, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2016_04, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2016_05, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2016_06, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2016_07, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2016_08, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2016_09, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2016_10, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2016_11, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2016_12, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
   
    mediaNDVI <- mediaNDVI/12
    mieiNDVImedi[x] <- mediaNDVI
    
  }  else if (coordinate[x,1]=="Feb-17") {
    dodiciNDVI <- extract(ndvi2016_02, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2016_03, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2016_04, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2016_05, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2016_06, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2016_07, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2016_08, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2016_09, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2016_10, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2016_11, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2016_12, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2017_01, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
   
    mediaNDVI <- mediaNDVI/12
    mieiNDVImedi[x] <- mediaNDVI
    
  }  else if (coordinate[x,1]=="Mar-17") {
    dodiciNDVI <- extract(ndvi2016_03, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2016_04, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2016_05, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2016_06, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2016_07, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2016_08, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2016_09, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2016_10, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2016_11, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2016_12, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2017_01, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2017_02, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
   
    mediaNDVI <- mediaNDVI/12
    mieiNDVImedi[x] <- mediaNDVI
    
  }  else if (coordinate[x,1]=="Apr-17") {
    dodiciNDVI <- extract(ndvi2016_04, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2016_05, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2016_06, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2016_07, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2016_08, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2016_09, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2016_10, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2016_11, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2016_12, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2017_01, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2017_02, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2017_03, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
   
    mediaNDVI <- mediaNDVI/12
    mieiNDVImedi[x] <- mediaNDVI
    
  }  else if (coordinate[x,1]=="May-17") {
    dodiciNDVI <- extract(ndvi2016_05, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2016_06, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2016_07, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2016_08, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2016_09, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2016_10, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2016_11, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2016_12, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2017_01, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2017_02, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2017_03, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2017_04, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
   
    mediaNDVI <- mediaNDVI/12
    mieiNDVImedi[x] <- mediaNDVI
    
  }  else if (coordinate[x,1]=="Jun-17") {
    dodiciNDVI <- extract(ndvi2016_06, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2016_07, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2016_08, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2016_09, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2016_10, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2016_11, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2016_12, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2017_01, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2017_02, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2017_03, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2017_04, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2017_05, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
   
    mediaNDVI <- mediaNDVI/12
    mieiNDVImedi[x] <- mediaNDVI
    
  }  else if (coordinate[x,1]=="Jul-17") {
    dodiciNDVI <- extract(ndvi2016_07, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2016_08, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2016_09, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2016_10, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2016_11, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2016_12, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2017_01, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2017_02, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2017_03, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2017_04, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2017_05, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2017_06, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
   
    mediaNDVI <- mediaNDVI/12
    mieiNDVImedi[x] <- mediaNDVI
    
  }  else if (coordinate[x,1]=="Sep-17") {
    dodiciNDVI <- extract(ndvi2016_09, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2016_10, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2016_11, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2016_12, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2017_01, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2017_02, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2017_03, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2017_04, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2017_05, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2017_06, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2017_07, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2017_08, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
   
    mediaNDVI <- mediaNDVI/12
    mieiNDVImedi[x] <- mediaNDVI
    
  }  else if (coordinate[x,1]=="Oct-17") {
    dodiciNDVI <- extract(ndvi2016_10, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2016_11, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2016_12, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2017_01, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2017_02, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2017_03, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2017_04, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2017_05, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2017_06, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2017_07, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2017_08, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2017_09, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
   
    mediaNDVI <- mediaNDVI/12
    mieiNDVImedi[x] <- mediaNDVI
    
  }  else if (coordinate[x,1]=="Nov-17") {
    dodiciNDVI <- extract(ndvi2016_11, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2016_12, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2017_01, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2017_02, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2017_03, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2017_04, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2017_05, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2017_06, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2017_07, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2017_08, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2017_09, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2017_10, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
   
    mediaNDVI <- mediaNDVI/12
    mieiNDVImedi[x] <- mediaNDVI
    
  }  else if (coordinate[x,1]=="Dec-17") {
    dodiciNDVI <- extract(ndvi2016_12, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2017_01, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2017_02, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2017_03, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2017_04, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2017_05, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2017_06, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2017_07, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2017_08, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2017_09, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2017_10, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2017_11, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
   
    mediaNDVI <- mediaNDVI/12
    mieiNDVImedi[x] <- mediaNDVI
    
  }  else if (coordinate[x,1]=="Feb-18") {
    dodiciNDVI <- extract(ndvi2017_02, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2017_03, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2017_04, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2017_05, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2017_06, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2017_07, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2017_08, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2017_09, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2017_10, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2017_11, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2017_12, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2018_01, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
   
    mediaNDVI <- mediaNDVI/12
    mieiNDVImedi[x] <- mediaNDVI
    
  }  else if (coordinate[x,1]=="Mar-18") {
    dodiciNDVI <- extract(ndvi2017_03, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2017_04, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2017_05, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2017_06, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2017_07, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2017_08, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2017_09, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2017_10, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2017_11, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2017_12, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2018_01, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2018_02, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
   
    mediaNDVI <- mediaNDVI/12
    mieiNDVImedi[x] <- mediaNDVI
    
  }  else if (coordinate[x,1]=="Apr-18") {
    dodiciNDVI <- extract(ndvi2017_04, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2017_05, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2017_06, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2017_07, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2017_08, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2017_09, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2017_10, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2017_11, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2017_12, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2018_01, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2018_02, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2018_03, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
   
    mediaNDVI <- mediaNDVI/12
    mieiNDVImedi[x] <- mediaNDVI
    
  }  else if (coordinate[x,1]=="May-18") {
    dodiciNDVI <- extract(ndvi2017_05, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2017_06, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2017_07, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2017_08, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2017_09, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2017_10, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2017_11, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2017_12, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2018_01, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2018_02, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2018_03, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2018_04, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
   
    mediaNDVI <- mediaNDVI/12
    mieiNDVImedi[x] <- mediaNDVI
    
  }  else if (coordinate[x,1]=="Jun-18") {
    dodiciNDVI <- extract(ndvi2017_06, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2017_07, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2017_08, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2017_09, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2017_10, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2017_11, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2017_12, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2018_01, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2018_02, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2018_03, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2018_04, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2018_05, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
   
    mediaNDVI <- mediaNDVI/12
    mieiNDVImedi[x] <- mediaNDVI
    
  }  else if (coordinate[x,1]=="Jul-18") {
    dodiciNDVI <- extract(ndvi2017_07, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2017_08, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2017_09, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2017_10, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2017_11, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2017_12, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2018_01, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2018_02, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2018_03, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2018_04, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2018_05, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2018_06, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
   
    mediaNDVI <- mediaNDVI/12
    mieiNDVImedi[x] <- mediaNDVI
    
  }  else if (coordinate[x,1]=="Aug-18") {
    dodiciNDVI <- extract(ndvi2017_08, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2017_09, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2017_10, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2017_11, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2017_12, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2018_01, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2018_02, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2018_03, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2018_04, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2018_05, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2018_06, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2018_07, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
   
    mediaNDVI <- mediaNDVI/12
    mieiNDVImedi[x] <- mediaNDVI
    
  }  else if (coordinate[x,1]=="Oct-18") {
    dodiciNDVI <- extract(ndvi2017_10, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2017_11, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2017_12, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2018_01, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2018_02, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2018_03, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2018_04, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2018_05, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2018_06, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2018_07, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2018_08, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2018_09, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
   
    mediaNDVI <- mediaNDVI/12
    mieiNDVImedi[x] <- mediaNDVI
    
  }  else if (coordinate[x,1]=="Nov-18") {
    dodiciNDVI <- extract(ndvi2017_11, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2017_12, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2018_01, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2018_02, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2018_03, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2018_04, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2018_05, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2018_06, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2018_07, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2018_08, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2018_09, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2018_10, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
   
    mediaNDVI <- mediaNDVI/12
    mieiNDVImedi[x] <- mediaNDVI
    
  }  else if (coordinate[x,1]=="Dec-18") {
    dodiciNDVI <- extract(ndvi2017_12, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2018_01, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2018_02, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2018_03, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2018_04, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2018_05, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2018_06, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2018_07, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2018_08, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2018_09, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2018_10, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2018_11, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
   
    mediaNDVI <- mediaNDVI/12
    mieiNDVImedi[x] <- mediaNDVI
    
  }  else if (coordinate[x,1]=="Gen-19") {
    dodiciNDVI <- extract(ndvi2018_01, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2018_02, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2018_03, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2018_04, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2018_05, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2018_06, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2018_07, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2018_08, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2018_09, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2018_10, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2018_11, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2018_12, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
   
    mediaNDVI <- mediaNDVI/12
    mieiNDVImedi[x] <- mediaNDVI
    
  }  else if (coordinate[x,1]=="Feb-19") {
    dodiciNDVI <- extract(ndvi2018_02, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2018_03, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2018_04, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2018_05, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2018_06, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2018_07, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2018_08, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2018_09, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2018_10, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2018_11, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2018_12, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2019_01, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
   
    mediaNDVI <- mediaNDVI/12
    mieiNDVImedi[x] <- mediaNDVI
    
  }  else if (coordinate[x,1]=="Mar-19") {
    dodiciNDVI <- extract(ndvi2018_03, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2018_04, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2018_05, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2018_06, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2018_07, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2018_08, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2018_09, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2018_10, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2018_11, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2018_12, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2019_01, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2019_02, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
   
    mediaNDVI <- mediaNDVI/12
    mieiNDVImedi[x] <- mediaNDVI
    
  }  else if (coordinate[x,1]=="Apr-19") {
    dodiciNDVI <- extract(ndvi2018_04, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2018_05, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2018_06, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2018_07, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2018_08, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2018_09, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2018_10, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2018_11, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2018_12, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2019_01, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2019_02, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2019_03, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
   
    mediaNDVI <- mediaNDVI/12
    mieiNDVImedi[x] <- mediaNDVI
    
  }  else if (coordinate[x,1]=="May-19") {
    dodiciNDVI <- extract(ndvi2018_05, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2018_06, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2018_07, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2018_08, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2018_09, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2018_10, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2018_11, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2018_12, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2019_01, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2019_02, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2019_03, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2019_04, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
   
    mediaNDVI <- mediaNDVI/12
    mieiNDVImedi[x] <- mediaNDVI
    
  }  else if (coordinate[x,1]=="Aug-19") {
    dodiciNDVI <- extract(ndvi2018_08, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2018_09, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2018_10, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2018_11, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2018_12, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2019_01, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2019_02, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2019_03, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2019_04, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2019_05, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2019_06, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2019_07, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
   
    mediaNDVI <- mediaNDVI/12
    mieiNDVImedi[x] <- mediaNDVI
    
  }  else if (coordinate[x,1]=="Sep-19") {
    dodiciNDVI <- extract(ndvi2018_09, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2018_10, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2018_11, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2018_12, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2019_01, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2019_02, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2019_03, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2019_04, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2019_05, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2019_06, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2019_07, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2019_08, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
   
    mediaNDVI <- mediaNDVI/12
    mieiNDVImedi[x] <- mediaNDVI
    
  }  else if (coordinate[x,1]=="Oct-19") {
    dodiciNDVI <- extract(ndvi2018_10, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2018_11, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2018_12, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2019_01, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2019_02, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2019_03, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2019_04, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2019_05, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2019_06, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2019_07, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2019_08, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2019_09, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
   
    mediaNDVI <- mediaNDVI/12
    mieiNDVImedi[x] <- mediaNDVI
    
  }  else if (coordinate[x,1]=="Dec-19") {
    dodiciNDVI <- extract(ndvi2018_12, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2019_01, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2019_02, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2019_03, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2019_04, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2019_05, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2019_06, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2019_07, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2019_08, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2019_09, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2019_10, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2019_11, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
   
    mediaNDVI <- mediaNDVI/12
    mieiNDVImedi[x] <- mediaNDVI
    
  }  else if (coordinate[x,1]=="Jan-20") {
    dodiciNDVI <- extract(ndvi2019_01, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2019_02, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2019_03, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2019_04, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2019_05, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2019_06, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2019_07, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2019_08, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2019_09, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2019_10, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2019_11, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2019_12, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
   
    mediaNDVI <- mediaNDVI/12
    mieiNDVImedi[x] <- mediaNDVI
    
  }  else if (coordinate[x,1]=="Feb-20") {
    dodiciNDVI <- extract(ndvi2019_02, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2019_03, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2019_04, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2019_05, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2019_06, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2019_07, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2019_08, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2019_09, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2019_10, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2019_11, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2019_12, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
    dodiciNDVI <- extract(ndvi2020_01, coordinateNoDate)
    mediaNDVI <- mediaNDVI + dodiciNDVI[[x]]
   
    mediaNDVI <- mediaNDVI/12
    mieiNDVImedi[x] <- mediaNDVI
  }  
}

library(writexl)
excel_file <- "NDVImean.xlsx"

write_xlsx(data.frame(mieiNDVImedi), excel_file)


# esempio su come ho stampato le nostra amiche immagini
p2 <- ggplot() + geom_raster(ndvi2018_04, mapping = aes(x=x, y=y, fill=c_gls_NDVI300.NDVI_201804110000_CUSTOM_PROBAV_V1.0.1)) 
+ scale_fill_viridis(option="mako", direction=-1, alpha=0.8) + ggtitle("NDVI values - April 2018") + labs(fill = "NDVI")
p2
ggsave("mappa3.png", plot = p2)

