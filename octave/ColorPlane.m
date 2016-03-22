% Color planes
img = imread('images/fruit.png');
imshow(img);
disp(size(img));
pause();

% TODO: Select a color plane, display it,
%inspect values from a row
img_red= img(:,:,1);
imshow(img_red);
disp(size(img_red));
pause();
plot(img_red(150,:));
pause();
