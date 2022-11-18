#Makes a gif for qf spread

library(magick)
library(ggplot2)
library(dplyr)
library(tidyr)

## list file names and read in
imgs <- list.files("C:\\Users\\neyja\\OneDrive\\Documents\\GitHub\\qf_visualizations\\Spelling\\THANKS!\\PNG_Output", full.names = TRUE)
img_list <- lapply(imgs, image_read)

## join the images together
img_joined <- image_join(img_list)

#FPS options (multiples of 100): 1, 2, 4, 5, 10, 25, 50 
img_animated <- image_animate(img_joined, fps = 2) 

## view animated image
img_animated

## save to directory
image_write(image = img_animated,
            path = "C:\\Users\\neyja\\OneDrive\\Documents\\GitHub\\qf_visualizations\\Spelling\\THANKS!\\THANKS!_R.gif")