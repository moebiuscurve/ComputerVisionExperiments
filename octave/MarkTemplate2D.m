pkg load image;

%% Read an image
img = rgb2gray(imread('images/fruit.png'));
imshow(img);
disp(size(img));
pause();

glyph=img(300:440,485:650);
imshow(glyph);
pause();

c=normxcorr2(glyph,img);
imshow(c);
pause();
