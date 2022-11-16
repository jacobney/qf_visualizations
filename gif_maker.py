#Makes gifs for fire spread

#Input Image path:
#C:\Users\neyja\OneDrive\Documents\GitHub\qf_visualizations\LIT

reticulate::repl_python(
  
  python3 -m pip install Pillow

def make_gif(frame_folder):
    frames = [Image.open(image) for image in glob.glob(f"{C:\Users\neyja\OneDrive\Documents\GitHub\qf_visualizations\LIT}/*.PNG")]
    frame_one = frames[0]
    frame_one.save("QuicFire.gif", format="GIF", append_images=frames,
               save_all=True, duration=35, loop=0)
    
if __name__ == "__main__":
    make_gif("C:/Users/16516/Desktop/qf_visualizations/line_ign_headfire/output?")
    
    import glob
##################ANOTHER WAY####################


import os

path = os.getcwd()

print(path)

getcwd()

from PIL import Image
import glob

# Create the frames
frames = []
imgs = glob.glob("C:\\Users\\neyja\\OneDrive\\Documents\\GitHub\\qf_visualizations\\LIT\\*.png")
for i in imgs:
    new_frame = Image.open(i)
    frames.append(new_frame)

# Save into a GIF file that loops forever
frames[0].save('C:\\Users\\neyja\\OneDrive\\Documents\\GitHub\\qf_visualizations\\LIT\\png_to_gif.gif', format='GIF',
               append_images=frames[1:],
               save_all=True,
               duration=300, loop=0)

#OG Copy

from PIL import Image


def make_gif(frame_folder):
    frames = [Image.open(image) for image in glob.glob(f"{frame_folder}/*.JPG")]
    frame_one = frames[0]
    frame_one.save("my_awesome.gif", format="GIF", append_images=frames,
               save_all=True, duration=100, loop=0)
    

if __name__ == "__main__":
    make_gif("/path/to/images")
    
#ANUTHA APPROACH

import imageio
images = []
for filename in filenames:
    images.append(imageio.imread(filename))
imageio.mimsave('/path/to/movie.gif', images)
)

python3 -m pip install Pillow

import glob
from PIL import Image
def make_gif(frame_folder):
    frames = [Image.open(image) for image in glob.glob(f"{C:/Users/16516/Desktop/qf_visualizations/line_ign_headfire}/*.PNG")]
    frame_one = frames[0]
    frame_one.save("QuicFire.gif", format="GIF", append_images=frames,
               save_all=True, duration=35, loop=0)
    
if __name__ == "__main__":
    make_gif("C:/Users/16516/Desktop/qf_visualizations/line_ign_headfire/output?")
    
    import glob

#OG Copy

from PIL import Image


def make_gif(frame_folder):
    frames = [Image.open(image) for image in glob.glob(f"{frame_folder}/*.JPG")]
    frame_one = frames[0]
    frame_one.save("my_awesome.gif", format="GIF", append_images=frames,
               save_all=True, duration=100, loop=0)
    

if __name__ == "__main__":
    make_gif("/path/to/images")
    
#ANUTHA APPROACH

import imageio
images = []
for filename in filenames:
    images.append(imageio.imread(filename))
imageio.mimsave('/path/to/movie.gif', images)
