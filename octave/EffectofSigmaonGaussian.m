im = zeros(325,325).+0;
sigma = 2;
noise = randn(size(im)).*sigma;
subplot(2,2,1);
ima=noise;
imshow(ima);
pause();

sigma = 8;
noise = randn(size(im)).*sigma;
subplot(2,2,2);
ima=noise;
imshow(ima);
pause();

sigma = 32;
noise = randn(size(im)).*sigma;
subplot(2,2,3);
ima=noise;
imshow(ima);
pause();

sigma = 64;
noise = randn(size(im)).*sigma;
subplot(2,2,4);
ima=noise;
imshow(ima);
pause();
