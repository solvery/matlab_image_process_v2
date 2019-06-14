
clear;
img_fn = 'colorbar_1080_r_y1920.bmp'
[fn, fn_name, fn_ext] = fileparts(img_fn);
[img_in,map,alpha] = imread(img_fn);

%figure,imshow(img_in)

img_p6 = (fix(img_in/4)*4);
imwrite(img_p6, [fn_name '_p6.bmp']);


img_p5 = (fix(img_in/8)*8);
imwrite(img_p5, [fn_name '_p5.bmp']);
