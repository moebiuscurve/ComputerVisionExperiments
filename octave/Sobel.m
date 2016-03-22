pkg load image;
%load image
img = imread('images/fruit.png');
imshow(rgb2gray(img));
pause();

%create a sobel filter
filter_size = 11;
filter_sigma = 2;
filter = fspecial('sobel');

%apply sobel filter in horizontal direction
smoothed = rgb2gray(imfilter(double(img), filter));
%imshow(smoothed);
colormap('gray'),imagesc(smoothed);
pause();

%apply sobel filter in vertical direction
smoothed = rgb2gray(imfilter(double(img), filter'));
%imshow(smoothed);
imagesc(smoothed);
pause();

%apply sobel filter in both direction
smoothed = rgb2gray(imfilter(double(img), (filter+filter')));
%imshow(smoothed);
imagesc(smoothed);
pause();

%threshold
imagesc(im2bw(smoothed));
pause();
