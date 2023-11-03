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



  if (...qualcosa...=="Oct_16") {

    x <- 1
repeat {
  ndviValore2019 <- extract(ndvi2019, coordinate2019, ncol=2)
    ndviValore2019 <- extract(ndvi2019, coordinate2019, ncol=2)
    ndviValore2019 <- extract(ndvi2019, coordinate2019, ncol=2)
    ndviValore2019 <- extract(ndvi2019, coordinate2019, ncol=2)
    ndviValore2019 <- extract(ndvi2019, coordinate2019, ncol=2)
    ndviValore2019 <- extract(ndvi2019, coordinate2019, ncol=2)
    ndviValore2019 <- extract(ndvi2019, coordinate2019, ncol=2)
    ndviValore2019 <- extract(ndvi2019, coordinate2019, ncol=2)
    ndviValore2019 <- extract(ndvi2019, coordinate2019, ncol=2)
    ndviValore2019 <- extract(ndvi2019, coordinate2019, ncol=2)
    ndviValore2019 <- extract(ndvi2019, coordinate2019, ncol=2)
    ndviValore2019 <- extract(ndvi2019, coordinate2019, ncol=2)

   
  x <- x + 1
  if (x > 157) {
    break
  }
}


 
}
