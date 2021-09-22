# Hecho con gusto por Selene Muñoz Ortega (UAEH)

#############################################
#LABORATORIO: Agrupamiento en R             #
#############################################

#Requisitos previos: Instalar paquete datatable
install.packages("data.table")


#Cargar paquete datatable
library(data.table)

#Cargar paquete dplyr
library(dplyr)

#Cargar base de datos
choose.files()

data2013 <- read.csv("C:\\Users\\munoz\\Dropbox\\Selene\\Doctorado\\4to semestre\\Unidad 2\\Lab31\\greenR_2013.csv")
data2013 <- as.data.table(data2013)

class(data2013)

#Agrupar varibales 
resultados2013 <- data2013 %>% 
  group_by(location_name) %>% 
  summarise(suma_GCI_2013= sum(GCI_2013, na.rm = TRUE),
           suma_GP_SINVCR= sum(GP_SINVCR, na.rm = TRUE),
           suma_GCP_2013= sum(GCP_2013, na.rm = TRUE),
            count = n())
