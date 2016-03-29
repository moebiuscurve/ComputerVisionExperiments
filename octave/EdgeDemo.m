pkg load image;

%% read the image
%img = imread('images/flowers.jpg');
%img = imread('images/zebrainjungle.jpg');
%img = imread('images/child.jpg');
%img = imread('images/zebra.jpg');
%img = imread('images/girleyeclosed.jpg');
img = imread('images/butterfly.jpg');
figure, imshow(img), title('original image, color');
pause();

%%convert to monochrome (grayscale) using rgb2gray
imgmono = rgb2gray(img);
%imgmono = imread('images/zebra.jpg');
figure, imshow(imgmono), title('original image, monochrome');
pause();

%% make a blurred/smoothed version
h = fspecial('gaussian',[11 11],4);
figure, surf(h);
pause();

imgsmooth = imfilter(imgmono, h);
figure, imshow(imgmono), title('smoothed image');
pause();


%% method1: shift left and right, and show diff image
imgL = imgsmooth;
imgL(:,[1:(end -1)]) = imgL(:,[2:end]);
imgR = imgsmooth;
imgR(:,[2:end]) = imgR(:,[1:(end-1)]);

imgDiff = double(imgR) - double(imgL);
figure,imshow(imgDiff,[]),title('Difference between right & left shifted image');
pause();


%% method2: Canny Edge Detector
cannyEdges = edge(imgmono, 'canny');
figure, imshow(cannyEdges), title('original edges');
pause();
cannyEdges = edge(imgsmooth, 'canny'); %on smooth image
figure, imshow(cannyEdges), title('Edges on smoothed image'); 
pause();

%% method 3: Laplacian of Gaussian
logEdges = edge(imgmono, 'log');
figure, imshow(logEdges), title('Laplacian of Gaussian');
pause();

