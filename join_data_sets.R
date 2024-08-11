# Load necessary packages
library(dplyr)

# Join the tables using appropriate columns
final_dataset <- inventario_vegetal %>%
  left_join(inventario_flora, by = "idInventario") %>%
  left_join(estrato, by = "idEstrato") %>%
  left_join(especies, by = "idEspecie") %>%
  left_join(cobertura, by = "idCobertura") %>%
  left_join(fisonomia_cobertura, by = "idInventario") %>%
  left_join(fisonomia, by = "idFisonomia") %>%
  left_join(altura_cobertura, by = "idAlturaCobertura") %>%
  left_join(formacion_altura_cobertura, by = "idInventario") %>%
  left_join(formacion, by = "idFormacion") %>%
  left_join(auxiliar_geo, by = "censo") %>%
  left_join(observadores, by = "idObservador")

# Save the final dataset to a CSV file
write_csv(final_dataset, "final_dataset.csv")
