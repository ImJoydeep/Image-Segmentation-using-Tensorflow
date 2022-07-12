# Image-Segmentation-using-Tensorflow
Image segmentation with deep learning is about using a model to assign a class to each pixel in an image, thus segmenting the image into different zones (such as “background” and “foreground,” or “road,” “car,” and “sidewalk”). This general category of techniques can be used to power a considerable variety of valuable applications in image and video editing, autonomous driving, robotics, medical imaging, and so on.
# Dataset
For training the model, I need a huge amount of data. So I decided to use Oxford-IIIT Pets dataset (www.robots.ox.ac.uk/~vgg/data/
pets/), which contains 7,390 pictures of various breeds of cats and dogs, together with foreground-background segmentation masks for each picture. A segmentation mask is
the image-segmentation equivalent of a label: it’s an image the same size as the input
image, with a single color channel where each integer value corresponds to the class of the corresponding pixel in the input image. In our case, the pixels of our segmentation masks can take one of three integer values:
 1 (foreground)
 2 (background)
 3 (contour)
 
 
Let’s start by downloading and uncompressing our dataset, using the wget and tar
shell utilities:
[http://www.robots.ox.ac.uk/~vgg/data/pets/data/images.tar.gz](http://www.robots.ox.ac.uk/~vgg/data/pets/data/images.tar.gz)
[http://www.robots.ox.ac.uk/~vgg/data/pets/data/annotations.tar.gz](http:/ /www.robots.ox.ac.uk/~vgg/data/pets/data/annotations.tar.gz)

# or  

`!wget http:/ /www.robots.ox.ac.uk/~vgg/data/pets/data/images.tar.gz`  

`!wget http:/ /www.robots.ox.ac.uk/~vgg/data/pets/data/annotations.tar.gz`

The input pictures are stored as JPG files in the images/ folder (such as images/Abyssinian_1.jpg), and the corresponding segmentation mask is stored as a PNG file with
the same name in the annotations/trimaps/ folder (such as annotations/trimaps/
Abyssinian_1.png)

# Model
https://github.com/ImJoydeep/Image-Segmentation-using-Tensorflow/blob/main/image/IS_model.png

Model Architecture: 
![alt text](https://github.com/ImJoydeep/Image-Segmentation-using-Tensorflow/blob/main/image/IS_model.png"Logo Title Text 1")


# Accuracy: 

![alt text](https://github.com/ImJoydeep/Image-Segmentation-using-Tensorflow/blob/main/image/Capture.PNG"Logo Title Text 1")

# Model Predictions:
![alt text][logo]

[logo]: https://github.com/ImJoydeep/Image-Segmentation-using-Tensorflow/blob/main/image/pred.PNG "Logo Title Text 2"

![alt text](https://github.com/ImJoydeep/Image-Segmentation-using-Tensorflow/blob/main/image/pred.PNG"Logo Title Text 1")
