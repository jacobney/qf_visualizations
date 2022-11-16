#This script is used for qf_visualizations

library(readxl)
library(tidyverse)

#Makes the keys, run once

ColumnsX <- read.csv("C:\\Users\\neyja\\OneDrive\\Documents\\GitHub\\qf_visualizations\\ColumnsX.csv")
LinesY <- read.csv("C:\\Users\\neyja\\OneDrive\\Documents\\GitHub\\qf_visualizations\\LinesY.csv")

#Create Endpoints

Endpoints <- read.csv("C:\\Users\\neyja\\OneDrive\\Documents\\GitHub\\qf_visualizations\\Endpoints.csv")

Get_X <- Endpoints %>%
  left_join(ColumnsX, by = "Column")
Get_Y <-  Endpoints %>%
  left_join(LinesY, by = "Row")
Get_XY <- Get_Y %>%
  left_join(Get_X, by = c("Pt_Num", "Column", "Row", "Coords"))
Endpoint_XY <- subset(Get_XY, select = c(Pt_Num, x, y))
Endpoint_Coords <- unite(Endpoint_XY, x_y, x, y, sep = " ")
Endpoint_Key <- mutate(Endpoint_Coords, End_A = Pt_Num, End_B = Pt_Num)

#Create Lines

Lines <- read.csv("C:\\Users\\neyja\\OneDrive\\Documents\\GitHub\\qf_visualizations\\Lines.csv")

Get_A <- Lines %>%
  left_join(Endpoint_Key, by = "End_A")
Get_B <- Lines %>%
  left_join(Endpoint_Key, by = "End_B")
Get_AB <- Get_A %>%
  left_join(Get_B, by = c("Light_A", "Light_B", "Letter", "X."))
Line_Out <-  subset(Get_AB, select = c("x_y.x", "x_y.y", "Light_A", "Light_B", "X.", "Letter"))
Txt_Ready <- unite(Line_Out, x, x_y.x, x_y.y, Light_A, Light_B, X., Letter, sep = " ")
write.table(Txt_Ready, paste("C:\\Users\\neyja\\OneDrive\\Documents\\GitHub\\qf_visualizations\\Ignition_Lines.txt"), 
            sep = " ", dec = ".", row.names = FALSE, col.names = FALSE, quote = FALSE)
