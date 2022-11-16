#Makes a gif for qf spread

install.packages("reticulate")
library(reticulate)

reticulate::repl_python(
  
)

#C:\\Users\\16516\\Desktop\\qf_visualizations\\line_ign_headfire

dir_out <- file.path(tempdir(), "tx-sales")
dir.create(dir_out, recursive = TRUE)

## list file names and read in
imgs <- list.files(C:\\Users\\16516\\Desktop\\qf_visualizations\\line_ign_headfire, full.names = TRUE)
img_list <- lapply(imgs, image_read)

## join the images together
img_joined <- image_join(img_list)

## animate at 2 frames per second
img_animated <- image_animate(img_joined, fps = 0.5)

## view animated image
img_animated

## save to disk
image_write(image = img_animated,
            path = "C:\\Users\\16516\\Desktop\\qf_visualizations\\line_ign_headfire\\gif")