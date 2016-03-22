pkg load image;

%% Read an image
img = imread('images/fruit.png');
imshow(img);
pause();

%% Add salt & pepper noise
noisy_img = imnoise(img, 'salt & pepper', 0.02);
imshow(noisy_img);
disp(size(noisy_img));
pause();

%% Apply a median filter

%% medfilt2 is probably broken in octave
%% TODO: implement this median filter yourself
%median_filtered = medfilt2(noisy_img,[3 3]);
median_filtered = medfilt2(noisy_img);
disp(size(median_filtered));
imshow(median_filtered);
pause();
