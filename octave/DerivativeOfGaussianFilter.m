pkg load image

filter_size=11;
filter_sigma = 2;
gaussian = fspecial('gaussian',filter_size, filter_sigma);
imagesc(gaussian);
pause();
sobel = fspecial('sobel');

% vertical direction
disp("vertical direction");
derivative = imfilter(gaussian,sobel);
colormap('gray'),imagesc(derivative);
pause();
figure, surf(derivative), shading flat;
pause();

% horizontal direction
disp("vertical direction");
derivative = imfilter(gaussian,sobel');
colormap('gray'), imagesc(derivative);
pause();
figure, surf(derivative), shading flat;
pause();
