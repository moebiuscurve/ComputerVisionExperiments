pkg load image;

%% Read an image
img = imread('images/fruit.png');
img1 = rgb2gray(img);
disp(size(img1));
%img2=rgb2gray(img(size(img,1)/2:size(img,1)/2+50,size(img,2)/2:size(img,2)/2+50,:));
img2=rgb2gray(img(175:340,150:185,:));
%imshowpair(img1,img2,'montage');
imshow(img1);
pause();
imshow(img2);
pause();
c = normxcorr2(img2,img1);
figure,surf(c), shading flat;
pause();

