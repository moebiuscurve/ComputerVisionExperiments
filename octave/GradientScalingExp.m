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
imshow((gx+4)/8);
pause();
imshow((gy+4)/8);
pause();

%imshow scaling
disp("imshow scaling");
[gx gy] = imgradientxy(img,'sobel');
imshow(gx,[-4 4]);
pause();
imshow(gy,[-4 4]);
pause();

%imshow empty scaling
disp("imshow empty scaling");
[gx gy] = imgradientxy(img,'sobel');
imshow(gx,[]);
pause();
imshow(gy,[]);
pause();
