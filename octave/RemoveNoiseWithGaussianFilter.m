%load image
img = imread('images/fruit.png');
subplot(2,2,1);
imshow(img);
pause();
%add some noise
noise_sigma = 25;
noise = randn(size(img)).*noise_sigma;
noisy_img = img + noise;
subplot(2,2,2)
imshow(noisy_img);
pause();
%create a gaussian filter
filter_size = 11;
filter_sigma = 2;
pkg load image;
filter = fspecial('gaussian',filter_size, filter_sigma);

%apply filter to remove noise
smoothed = imfilter(noisy_img, filter);
subplot(2,2,3);
imshow(smoothed);
pause();

%create a gaussian filter
filter_size = 31;
filter_sigma = 5;
pkg load image;
filter = fspecial('gaussian',filter_size, filter_sigma);

%apply filter to remove noise
smoothed = imfilter(noisy_img, filter);
subplot(2,2,4);
imshow(smoothed);
pause();
