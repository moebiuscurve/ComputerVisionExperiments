pkg load image;

%% Read an image
img = rgb2gray(imread('images/fruit.png'));
imshow(img);
pause();

multiple = 50;
% filter 1
filterY1=[-1; 1];
imgY1=imfilter(img, filterY1).*multiple;
imshow(imgY1);
pause();

% filter 2
filterY2=[1; -1];
imgY2=imfilter(img, filterY2).*multiple;
imshow(imgY2);
pause();
