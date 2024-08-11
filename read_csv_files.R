# Load necessary packages
library(readr)
library(tibble)
library(sf)

# Read CSV files into tibbles
altura_cobertura <- read_csv("Censos de vegetacion - AlturaCobertura.csv")
cobertura <- read_csv("Censos de vegetacion - Cobertura.csv")
especies <- read_csv("Censos de vegetacion - Especies.csv")
estrato <- read_csv("Censos de vegetacion - Estrato.csv")
fisonomia <- read_csv("Censos de vegetacion - Fisonomia.csv")
fisonomia_cobertura <- read_csv("Censos de vegetacion - FisonomiaCobertura.csv")
formacion <- read_csv("Censos de vegetacion - Formacion.csv")
formacion_altura_cobertura <- read_csv("Censos de vegetacion - FormacionAlturaCobertura.csv")
inventario_flora <- read_csv("Censos de vegetacion - InventarioFlora.csv")
inventario_vegetal <- read_csv("Censos de vegetacion - InventarioVegetal.csv")
observadores <- read_csv("Censos de vegetacion - Observadores.csv")

# Geographic data

localidad <- read_csv("Censos de vegetacion - Localidades.csv", 
                      locale = locale(decimal_mark = ",", grouping_mark = ".")) 

localidad <- st_as_sf(localidad, coords=c("longitudLocalidad","latitudLocalidad"), crs=4326)

ggplot() +
  geom_sf(data = localidad) +
  ggtitle("Localidades")


# Read the csv file 'Censos de vegetacion - Departamentos.csv' as a geographic dataset
departamentos <- st_read("Censos de vegetacion - DepartamentosLP.csv")

departamentos <- st_as_sf(departamentos, wkt = "geomTDepartamento")

ggplot() +
  geom_sf(data = departamentos) +
  ggtitle("Departamentos")

# Read the csv file 'Censos de vegetacion - AuxiliarGEO.csv' as a geographic dataset

auxiliar_geo <- read_csv("Censos de vegetacion - AuxiliarGEO.csv", 
                         locale = locale(decimal_mark = ",", grouping_mark = "."))

auxiliar_geo <- st_as_sf(auxiliar_geo, coords=c("latitudInventario","longitudInventario"))

ggplot() +
  geom_sf(data = auxiliar_geo) +
  ggtitle("Censos")
