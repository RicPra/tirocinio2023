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

# Ripeto sto lavorazzo per ogni indirizzo
# Devo trovare un modo per convertire velocemente tutti gli indirizzi in coordinate
# e per trovare gli NDVI di quelle coordinate velocemente

# Gli indirizzi li ho già cazziati in un file CSV magari si può lavorare da lì
