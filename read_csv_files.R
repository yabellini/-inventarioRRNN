# Load necessary packages
library(readr)
library(tibble)
library(sf)

# Read CSV files into tibbles
altura_cobertura <- read_csv("Censos de vegetacion - AlturaCobertura.csv")
auxiliar_geo <- read_csv("Censos de vegetacion - AuxiliarGEO.csv")
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

# Read the csv file 'Censos de vegetacion - Departamentos.csv' as a geographic dataset
departamentos <- st_read("Censos de vegetacion - Departamentos.csv")
