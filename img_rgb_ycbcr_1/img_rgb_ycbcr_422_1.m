
img_fn = 'rand3_1080p.png';
[a,img_fn_name,c] = fileparts(img_fn);

img_1 = imread(img_fn);
img_2 = rgb2ycbcr(img_1);

img_2_1 = img_2;
img_2_2 = img_2;
img_2_1(:,1:2:end,2:3) = img_2_1(:,2:2:end,2:3);
img_2_3 = img_2_1;
img_2_2(1:2:end,:,2:3) = img_2_2(2:2:end,:,2:3);
img_2_3(1:2:end,:,2:3) = img_2_3(2:2:end,:,2:3);

img_3 = ycbcr2rgb(img_2);
img_3_1 = ycbcr2rgb(img_2_1);
img_3_2 = ycbcr2rgb(img_2_2);
img_3_3 = ycbcr2rgb(img_2_3);


imwrite(img_2, [img_fn_name '_ycbcr.png']);
imwrite(img_2_1, [img_fn '_ycbcr422-1.png']);
imwrite(img_2_2, [img_fn '_ycbcr422-2.png']);
imwrite(img_2_3, [img_fn '_ycbcr420-1.png']);
imwrite(img_3, [img_fn_name '_ycbcr_rgb.png']);
imwrite(img_3_1, [img_fn '_ycbcr422-1_rgb.png']);
imwrite(img_3_2, [img_fn '_ycbcr422-2_rgb.png']);
imwrite(img_3_3, [img_fn '_ycbcr420-1_rgb.png']);