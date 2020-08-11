##### Educación

### Estimada Sandra, bienvenida al mundo del R, este será tu segundo acercamiento, así que aquí vamos
# los comentarios que no ejecutan codigo son los marcados en azúl y llevan # al principio

# R funciona a base de librerias, acá una de ellas readr, para usarla primero tienes que instalarla

#install.packages(readr)
library(readr)
marco_INE <- read_delim("marco_0708_1718_eb.csv",
"|", escape_double = FALSE, trim_ws = TRUE)
View(marco_INE)

marco_INE$CICLO <- as.factor(marco_INE$CICLO)
marco_INE$TURNO <- as.factor(marco_INE$TURNO)
marco_INE$NIVEL <- as.factor(marco_INE$NIVEL)
marco_INE$ENT_MGN <- as.factor(marco_INE$ENT_MGN)
marco_INE$ENT_ADMON <- as.factor(marco_INE$ENT_ADMON)
marco_INE$SOSTENIMIENTO <- as.factor(marco_INE$SOSTENIMIENTO)
marco_INE$NIVEL <- as.factor(marco_INE$NIVEL)
marco_INE$MULTIGRADO <- as.factor(marco_INE$MULTIGRADO)

library(tidyverse)

x<- marco_INE %>% 
  count(CICLO)
x

y<- marco_INE %>% 
  count(ENT_MGN)
y

z<- marco_INE %>% 
  count(TAM_LOC)
z

w<- marco_INE %>% 
  count(MODALIDAD)
w


INE101<- filter(marco_INE, TAM_LOC == 1, ENT_MGN == "01")

#el obejtivo será hacer un mapa

library(psych)
describe.by(marco_INE, marco_INE$group)
