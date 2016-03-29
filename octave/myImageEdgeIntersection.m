pkg load image;

frizzy = imread('images/frizzy.png');
froomer = imread('images/froomer.png');
imshow(frizzy);
pause();
imshow(froomer);
pause();

% TODO: Find edges in frizzy and froomer images
[ygx ygy] = imgradientxy(rgb2gray(frizzy),'sobel');
[ygmag ygdir] = imgradient(ygx, ygy);
ygmag = ygmag./(4*sqrt(2));
ygdir = (ygdir+180)/360;
imshow(ygmag);
pause();

[rgx rgy] = imgradientxy(rgb2gray(froomer),'sobel');
[rgmag rgdir] = imgradient(rgx, rgy);
rgmag = rgmag./(4*sqrt(2));
rgdir = (rgdir+180)/360;
imshow(rgmag);
pause();


% TODO: Display common edge pixels
imshow(rgmag & ygmag);
pause();

