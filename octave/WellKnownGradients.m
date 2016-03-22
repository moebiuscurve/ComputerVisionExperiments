pkg load image;
%load image
img = imread('images/fruit.png');
imshow(rgb2gray(img));
pause();

%create a sobel filter
filter_size = 11;
filter_sigma = 2;
filter = fspecial('Sobel');

%apply sobel filter in horizontal direction
smoothed = rgb2gray(imfilter(double(img), filter));
%imshow(smoothed);
colormap('gray'),imagesc(smoothed);
disp("sobel horizontal");
pause();

%apply sobel filter in vertical direction
smoothed = rgb2gray(imfilter(double(img), filter'));
%imshow(smoothed);
imagesc(smoothed);
disp("sobel vertical");
pause();


%prewitt
filter = fspecial('Prewitt');

%apply sobel filter in horizontal direction
smoothed = rgb2gray(imfilter(double(img), filter));
%imshow(smoothed);
colormap('gray'),imagesc(smoothed);
disp("prewitt horizontal");
pause();

%apply sobel filter in vertical direction
smoothed = rgb2gray(imfilter(double(img), filter'));
%imshow(smoothed);
imagesc(smoothed);
disp("prewitt vertical");
pause();

%roberts
%not supported
%filter = fspecial('Roberts');

%apply sobel filter in horizontal direction
%smoothed = rgb2gray(imfilter(double(img), filter));
%imshow(smoothed);
%colormap('gray'),imagesc(smoothed);
%disp("roberts horizontal");
%pause();

%apply sobel filter in vertical direction
%smoothed = rgb2gray(imfilter(double(img), filter'));
%imshow(smoothed);
%imagesc(smoothed);
%disp("roberts vertical");
%pause();
