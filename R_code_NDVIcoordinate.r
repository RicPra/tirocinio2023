# Codice per trovarmi gli NDVI corrispondenti alle coordinate date

# Mi richiamo tutti i pacchetti che mi servono
library(ncdf4)
library(raster)
library(ggplot2)
library(RStoolbox)
library(viridis)

# Setto la work directory
setwd("/Users/Ricky/Documents/NDVI")

# Mi salvo le mie mappine
ndvi2016 <- raster("c_gls_NDVI300_201606110000_GLOBE_PROBAV_V1.0.1.nc")
ndvi2017 <- raster("c_gls_NDVI300_201706110000_GLOBE_PROBAV_V1.0.1.nc")
ndvi2018 <- raster("c_gls_NDVI300_201806110000_GLOBE_PROBAV_V1.0.1.nc")
ndvi2019 <- raster("c_gls_NDVI300_201906110000_GLOBE_PROBAV_V1.0.1.nc")


# Se voglio visualizzare la mappa me la plotto così
ggplot() + geom_raster(ndvi2016, mapping = aes(x=x, y=y, fill=Normalized.Difference.Vegetation.Index.333M)) + scale_fill_viridis(option="mako")

# Più o meno un grado di longitudine nella mia zona di interesse corrisponde a 80/90 km
# Le coordinate le approssimerò quindi tutte a 3 cifre decimali, visto che la risolizione dei miei dati è di 300 metri.
# Mi trovo il valore dell'NDVI rispetto alle coordinate che ho 
# (nota: nella matrice va prima la longitudine e poi la latitudine)
ndviValore <- extract(ndvi, matrix(c(11.061, 44.594), ncol=2))

# Vediamo com'è
ndviValore

# Ripeto sto lavorazzo per ogni indirizzo oppure...
# Così invece per fare con il file .csv e trovare il vettore con gli NDVI corrispondenti

# Paccetto che ci serve
library(utils)

# Salvo i file con le coordinate (nota: non c'è intestazione e il separatore nel mio caso è ";")
coord2016 <- read.csv("coordinate2016.csv", header=FALSE, sep=";")
coord2017 <- read.csv("coordinate2017.csv", header=FALSE, sep=";")
coord2018 <- read.csv("coordinate2018.csv", header=FALSE, sep=";")
coord2019 <- read.csv("coordinate2019.csv", header=FALSE, sep=";")

# Me le salvo come matrici e vedo cosa esce
coordinate2016 <- as.matrix(coord2016)
coordinate2016

coordinate2017 <- as.matrix(coord2017)
coordinate2017

coordinate2018 <- as.matrix(coord2018)
coordinate2018

coordinate2019 <- as.matrix(coord2019)
coordinate2019

# Gli chiedo di darmi i valori NDVI corrispondenti alle coordinate presalvate nelle matrici
ndviValore2016 <- extract(ndvi2016, coordinate2016, ncol=2)
ndviValore2016

ndviValore2017 <- extract(ndvi2017, coordinate2017, ncol=2)
ndviValore2017

ndviValore2018 <- extract(ndvi2018, coordinate2018, ncol=2)
ndviValore2018

ndviValore2019 <- extract(ndvi2019, coordinate2019, ncol=2)
ndviValore2019


# Devo trovare un modo per convertire velocemente tutti gli indirizzi in coordinate!!!
# ps: non si può rip
