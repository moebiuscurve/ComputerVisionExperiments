%Gradient Direction
pkg load image;

%Load and convert image to double type,range[0,1] for convenience
img = double(rgb2gray(imread('images/octastar.jpeg')))/255;
%img = double(rgb2gray(imread('images/octagon.png')))/255;
%img = double(rgb2gray(imread('images/fruit.png')))/255;
%img = double(rgb2gray(imread('images/wireframe.jpg')))/255;
imshow(img);
pause();

%compute x, y gradients
[gx gy] = imgradientxy(img,'sobel');
%imshow((gx+4)/8);
%pause();
%imshow((gy+4)/8);
%pause();

%obtain gradient magnitude and direction
[gmag gdir] = imgradient(gx, gy);
imshow(gmag/(4*sqrt(2)));
pause();
imshow((gdir+180)/360);% angle in degrees [-180 180]
pause();
