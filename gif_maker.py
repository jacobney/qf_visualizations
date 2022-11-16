#Makes gifs for fire spread

#Input Image path:
#C:\\Users\\16516\\Desktop\\qf_visualizations\\line_ign_headfire

reticulate::repl_python(
  
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
