
clear;
img_fn = 'img_17.png'
[fn, fn_name, fn_ext] = fileparts(img_fn);
[img_in,map,alpha] = imread(img_fn);


img_p6 = (fix(img_in/2)*2);
imwrite(img_p6, [fn_name '_p7.png']);

img_p6 = (fix(img_in/4)*4);
imwrite(img_p6, [fn_name '_p6.png']);


img_p5 = (fix(img_in/8)*8);
imwrite(img_p5, [fn_name '_p5.png']);

img_p5 = (fix(img_in/16)*16);
imwrite(img_p5, [fn_name '_p4.png']);
