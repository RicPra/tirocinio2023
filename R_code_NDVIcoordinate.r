# Codice per trovarmi gli NDVI corrispondenti alle coordinate date

# Mi richiamo tutti i pacchetti che mi servono
library(ncdf4)
library(raster)
library(ggplot2)
library(RStoolbox)
library(viridis)

# Setto la work directory
setwd("/Users/Ricky/Documents/NDVI")

# Mi salvo la mia mappina
ndvi <- raster("c_gls_NDVI300_201606110000_GLOBE_PROBAV_V1.0.1.nc")

# Se voglio visualizzare la mappa me la plotto così
ggplot() + geom_raster(ndvi, mapping = aes(x=x, y=y, fill=Normalized.Difference.Vegetation.Index.333M)) + scale_fill_viridis(option="mako")

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

# Salvo il file con le coordinate (nota: non c'è intestazione e il separatore nel mio caso è ";")
coord <- read.csv("coordinate.csv", header=FALSE, sep=";")
# Me le salvo come matrice e vedo cosa esce
coordinate <- as.matrix(coord)
coordinate

# Gli chiedo di darmi i valori NDVI corrispondenti alle coordinate presalvate nella matrice
ndviValore <- extract(ndvi, coordinate, ncol=2)
ndviValore


# Devo trovare un modo per convertire velocemente tutti gli indirizzi in coordinate!!!
# ps: non si può rip
