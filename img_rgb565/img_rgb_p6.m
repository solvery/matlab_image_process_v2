
clear;
img_fn = 'img_17cd .bmp'
[fn, fn_name, fn_ext] = fileparts(img_fn);
[img_in,map,alpha] = imread(img_fn);

%figure,imshow(img_in)

img_p1 = (fix(img_in(:,:,1)/8)*8);
img_p2 = (fix(img_in(:,:,2)/4)*4);
img_p3 = (fix(img_in(:,:,3)/8)*8);
img_p656(:,:,1) = img_p1;
img_p656(:,:,2) = img_p2;
img_p656(:,:,3) = img_p3;
imwrite(img_p656, [fn_name '_p565.bmp']);

% 
% img_p5 = (fix(img_in/8)*8);
% imwrite(img_p5, [fn_name '_p5.bmp']);
