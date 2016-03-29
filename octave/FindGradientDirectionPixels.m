%Gradient Direction
function grad = select_gdir(gmag, gdir, minmag, lowdir,highdir)
	grad = gmag > minmag & gdir >= lowdir & gdir <= highdir;
endfunction
pkg load image;

%Load and convert image to double type,range[0,1] for convenience
img = double(rgb2gray(imread('images/octastar.jpeg')))/255;
%img = double(rgb2gray(imread('images/octagon.png')))/255;
%img = double(rgb2gray(imread('images/fruit.png')))/255;
%img = double(rgb2gray(imread('images/wireframe.jpg')))/255;
%img = double(rgb2gray(imread('images/butterfly.jpg')))/255;
%img = double(rgb2gray(imread('images/sun.jpg')))/255;
%img = double(imread('images/zebra.jpg'))/255;
%img = double(rgb2gray(imread('images/zebrainjungle.jpg')))/255;
imshow(img);
pause();

%compute x, y gradients
[gx gy] = imgradientxy(img,'sobel');
%imshow((gx+4)/8);
%pause();
%imshow((gy+4)/8);
%pause();

%obtain gradient magnitude and direction
[gmag gdir] = imgradient(gx, gy);
imshow(gmag/(4*sqrt(2)));
disp(size(gmag));
pause();
imshow((gdir+180)/360);% angle in degrees [-180 180]
disp(size(gdir));
pause();

%disp(gmag);
%pause();
%disp(gdir);
%pause();
% Find pixels with desired gradient direction
my_grad = select_gdir(gmag, gdir, 1, 30, 60); %45 +/- 15
imshow(my_grad);
pause();

my_grad = select_gdir(gmag, gdir, 1, -15, 15); %45 +/- 15
imshow(my_grad);
pause();

my_grad = select_gdir(gmag, gdir, 1, 75, 105); %45 +/- 15
imshow(my_grad);
pause();
