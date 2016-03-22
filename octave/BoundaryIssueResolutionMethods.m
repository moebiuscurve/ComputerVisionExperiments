pkg load image;

%img=imread('images/dolphin.png');
%img=imread('images/fruit.png');
img=imread('images/wireframe.jpg');
%subplot(3,2,1);
imshow(img);
pause();

%%Create a Gaussian filter
filter_size=21;
filter_sigma=3;
filter=fspecial('gaussian',filter_size,filter_sigma);

%%apply it specifying an edge parameter
black=imfilter(img,filter,0);
%subplot(3,2,2);
imshow(black);
pause();

%%apply it specifying an edge parameter
circular=imfilter(img,filter,'circular');
%subplot(3,2,3);
imshow(circular);
pause();

%%apply it specifying an edge parameter
replicate=imfilter(img,filter,'replicate');
%subplot(3,2,4);
imshow(replicate);
pause();

%%apply it specifying an edge parameter
symmetric=imfilter(img,filter,'symmetric');
%subplot(3,2,5);
imshow(symmetric);
pause();
