#This script is used for qf_visualizations

library(readxl)
library(tidyverse)

#Makes the keys, run once

ColumnsX <- read.csv("C:\\Users\\neyja\\OneDrive - Colostate\\Documents\\GitHub\\qf_visualizations\\ColumnsX.csv")
LinesY <- read.csv("C:\\Users\\neyja\\OneDrive - Colostate\\Documents\\GitHub\\qf_visualizations\\LinesY.csv")

#Create Endpoints

Endpoints <- read.csv("C:\\Users\\neyja\\OneDrive - Colostate\\Documents\\GitHub\\qf_visualizations\\Spelling\\THANKS!\\Endpoints.csv")

Get_X <- Endpoints %>%
  left_join(ColumnsX, by = "Column")
Get_Y <-  Endpoints %>%
  left_join(LinesY, by = "Row")
Get_XY <- Get_Y %>%
  left_join(Get_X, by = c("Pt_Num", "Column", "Row", "Coords"))
Endpoint_XY <- subset(Get_XY, select = c(Pt_Num, x, y))
Endpoint_Coords <- unite(Endpoint_XY, x_y, x, y, sep = " ")
Endpoint_Key <- mutate(Endpoint_Coords, start_pt = Pt_Num, end_pt = Pt_Num)

#Create Lines

Lines <- read.csv("C:\\Users\\neyja\\OneDrive - Colostate\\Documents\\GitHub\\qf_visualizations\\Spelling\\THANKS!\\Lines.csv")

Get_start <- Lines %>%
  left_join(Endpoint_Key, by = "start_pt")
Get_end <- Lines %>%
  left_join(Endpoint_Key, by = "end_pt")
Get_line <- Get_start %>%
  left_join(Get_end, by = c("ign_start", "ign_end", "letter", "excl", "line_num"))
Line_Out <-  subset(Get_line, select = c("x_y.x", "x_y.y", "ign_start", "ign_end", "excl", "letter", "line_num"))
Txt_Ready <- unite(Line_Out, Output, x_y.x, x_y.y, ign_start, ign_end, excl, letter, line_num, sep = " ")
write.table(Txt_Ready, paste("C:\\Users\\neyja\\OneDrive - Colostate\\Documents\\GitHub\\qf_visualizations\\Spelling\\THANKS!\\Ignition_Lines.txt"), 
            sep = " ", dec = ".", row.names = FALSE, col.names = FALSE, quote = FALSE)
view(Txt_Ready)
