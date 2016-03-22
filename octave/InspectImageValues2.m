% Inspect image values
img = imread('images/dolphin.png');
imshow(img);
disp(size(img));
disp(img(101:103,201:203));
pause();
