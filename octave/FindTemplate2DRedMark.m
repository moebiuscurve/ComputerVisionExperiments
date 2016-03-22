% Find template 2D
% NOTE: Function definition must be the very first piece of code here!
function [yIndex xIndex] = find_template_2D(template, img)
    % TODO: Find template in img and return [y x] location
    % NOTE: Turn off all output from inside the function before submitting!
    c = normxcorr2(template,img);
    [yRaw xRaw] = find(c == max(c(:)));
    yIndex = yRaw - size(template,1) +1;
    xIndex = xRaw - size(template,2) + 1;
endfunction


pkg load image;

%% Read an image
img = rgb2gray(imread('images/fruit.png'));
imshow(img);
disp(size(img));
pause();
%img2=rgb2gray(img(size(img,1)/2:size(img,1)/2+50,size(img,2)/2:size(img,2)/2+50,:));
glyph=img(175:340,150:185);
%imshowpair(img1,img2,'montage');
imshow(glyph);
pause();
[y x] = find_template_2D(glyph, img);
disp([y x]);
pause();

%plot where the template was found
colormap('gray'), imagesc(img);
hold on;
plot(x, y, 'r+', 'markersize', 26);
hold off;
pause();
