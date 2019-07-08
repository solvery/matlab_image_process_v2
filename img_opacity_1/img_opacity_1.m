img_1 = imread('190401-z30.jpg');

img_2 = img_1+255*0.03;
imwrite(img_2, '190401-z30-trans-1.png');

img_2 = imadd(img_1, 256*0.3);
imwrite(img_2, '190401-z30-trans-2.png');
