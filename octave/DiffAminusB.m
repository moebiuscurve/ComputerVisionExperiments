img1= imread('images/dolphin.png');
im1=img1(:,:,:);
subplot(1,2,1);
imshow(im1);
disp(size(img1));
pause();

img2= imread('images/fruit.png');
im2=img2(size(img2,1)-324:size(img2,1),size(img2,2)-324:size(img2,2),:);
subplot(1,2,2);
disp(size(img2));
imshow(im2);
pause();

img12 = im1-im2;
subplot(1,2,1);
imshow(img12);
disp(size(img12));
%disp(class(img12));
pause();

img21 =  im2-im1;
subplot(1,2,2);
imshow(img21);
disp(size(img21));
pause();

%absolute difference
pkg load image;
aimg12 = imabsdiff(im1,im2);
subplot(1,2,1);
imshow(aimg12);
pause();

aimg21 = imabsdiff(im2,im1);
subplot(1,2,2);
imshow(aimg21);
pause();
