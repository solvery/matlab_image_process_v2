clear;
img_fn = 'colorbar_1080p.png';
[a,img_fn_name,c] = fileparts(img_fn);
img = imread(img_fn);
imwrite(img, [img_fn_name '-1.png']);

