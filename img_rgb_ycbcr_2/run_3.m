clear; 

img_1 = gen_img_ycbcr_1(3840, 2160);
imwrite(img_1, 'img_rand3_ycbcr_1_2160p-1.png');


img_2 = gen_img_ycbcr_1_1(3840, 2160);
imwrite(img_2, 'img_rand3_ycbcr_2_2160p-1.png');


img_3 = gen_img_ycbcr_1_2(3840, 2160);
imwrite(img_3, 'img_rand3_ycbcr_3_2160p-1.png');

