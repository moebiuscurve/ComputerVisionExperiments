pkg load image;

%% Read an image
img = rgb2gray(imread('images/fruit.png'));
imshow(img);
pause();

filterX=[-1 1];
imgX=imfilter(img, filterX)*50;
imshow(imgX);
pause();
