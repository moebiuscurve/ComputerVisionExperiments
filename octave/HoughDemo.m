pkg load image;

%% read the image
%img = imread('images/flowers.jpg');
%img = imread('images/zebrainjungle.jpg');
%img = imread('images/child.jpg');
%img = imread('images/zebra.jpg');
%img = imread('images/girleyeclosed.jpg');
%img = imread('images/butterfly.jpg');
%img = imread('images/octastar.jpeg');
%img = imread('images/octagon.png');
%img = imread('images/waterway.jpg');
%img = imread('images/forest.jpg');
%img = imread('images/hormoz.jpg');
%img = imread('images/pulsetrace.jpg');
%img = imread('images/star.png');
img = imread('images/bench.jpg');
figure, imshow(img), title('original image');
hold off;
pause();

grays = rgb2gray(img);
figure, imshow(grays), title('Grayscale');
disp('size of image:'),disp(size(grays));
pause();

edges = edge(grays, 'canny');
figure, imshow(edges), title('Edge pixels');
hold off;
disp('size of edges:'),disp(size(edges));
pause();

H = houghtf(edges, 'line');
disp('size of H:'),disp(size(H));
pause();
theta = [([1:size(H,2)].-ceil(size(H,2))/2)];
rho = [[1:size(H,1)].-ceil(size(H,1)/2)];

[R C]=immaximas(H,5,100);
Rrho=R.-ceil(size(H,1)/2);
Ctheta=C.-ceil(size(H,2))/2;
disp('Rrho:'),disp(size(Rrho));
disp('Ctheta:'),disp(size(Ctheta));

figure, imagesc(theta,rho,H), title("Hough accumulator");
hold off;
pause();
figure, imagesc(theta,rho,H), title("Hough accumulator");
hold on;
plot(Ctheta,Rrho,'rs');
hold off;
pause();

peaks=[Rrho Ctheta];
%disp('size of peaks'),disp(size(peaks));
%pause();

%[X,Y]=pol2cart(C,R);
%X=1:size(grays,2).-ceil(size(grays,2))/2;
%X=[-10:10];
%Y=(R-X*cos(C))/sin(C);

%figure, imagesc(img), title("lines");
%hold on;
%plot(X',Y');

%hold off;
%pause();

%% TODO: Need to figure out how to extract and display lines from images

