% Crop an image
img = imread('images/dolphin.png');
imshow(img);
disp(size(img));% check size
pause();

cropped = img(110:310, 10:160);
imshow(cropped);

% TODO: Find out cropped image size
disp(size(cropped));
pause();
