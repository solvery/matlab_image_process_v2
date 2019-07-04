
img_1 = imread('board.tif');
img_2 = rgb2ycbcr(img_1);
img_3 = ycbcr2rgb(img_2);

figure
subplot(2,2,1)
imshow(img_1);

subplot(2,2,2)
imshow(img_2)

subplot(2,2,3)
imshow(img_2(:,:,1))

subplot(2,2,4)
imshow(img_3);

