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
 
 
Let’s start by downloading and uncompressing our dataset
shell utilities:
[http://www.robots.ox.ac.uk/~vgg/data/pets/data/images.tar.gz](http://www.robots.ox.ac.uk/~vgg/data/pets/data/images.tar.gz)
[http://www.robots.ox.ac.uk/~vgg/data/pets/data/annotations.tar.gz](http:/ /www.robots.ox.ac.uk/~vgg/data/pets/data/annotations.tar.gz)

# or  
 using the wget command:-

` wget http://www.robots.ox.ac.uk/~vgg/data/pets/data/images.tar.gz`  

` wget http://www.robots.ox.ac.uk/~vgg/data/pets/data/annotations.tar.gz`

The input pictures are stored as JPG files in the images/ folder (such as images/Abyssinian_1.jpg), and the corresponding segmentation mask is stored as a PNG file with
the same name in the annotations/trimaps/ folder (such as annotations/trimaps/
Abyssinian_1.png)

# Model

Model Architecture: 
![alt text][logo1]

[logo1]: https://github.com/ImJoydeep/Image-Segmentation-using-Tensorflow/blob/main/image/Capture1.png "Model Architecture"


# Accuracy: 
![alt text][logo2]

[logo2]: https://github.com/ImJoydeep/Image-Segmentation-using-Tensorflow/blob/main/image/Capture.PNG "Accuracy"

# Model Predictions:
![alt text][logo3]

[logo3]: https://github.com/ImJoydeep/Image-Segmentation-using-Tensorflow/blob/main/image/pred.PNG "Model Prediction"

