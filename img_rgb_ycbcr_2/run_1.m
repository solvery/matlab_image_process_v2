clear; 

img_1 = gen_img_ycbcr_1(1920, 1080);
imwrite(img_1, 'img_rand3_ycbcr_1_1080p.png');
imwrite(img_1, 'img_rand3_ycbcr_1_1080p_jpeg_q100.jpg', 'Quality', 100);
imwrite(img_1, 'img_rand3_ycbcr_1_1080p_jpeg_q80.jpg', 'Quality', 80);

img_2 = gen_img_ycbcr_1_1(1920, 1080);
imwrite(img_2, 'img_rand3_ycbcr_2_1080p.png');
imwrite(img_2, 'img_rand3_ycbcr_2_1080p_jpeg_q100.jpg', 'Quality', 100);
imwrite(img_2, 'img_rand3_ycbcr_2_1080p_jpeg_q80.jpg', 'Quality', 80);

img_3 = gen_img_ycbcr_1_2(1920, 1080);
imwrite(img_3, 'img_rand3_ycbcr_3_1080p.png');
imwrite(img_3, 'img_rand3_ycbcr_3_1080p_jpeg_q100.jpg', 'Quality', 100);
imwrite(img_3, 'img_rand3_ycbcr_3_1080p_jpeg_q80.jpg', 'Quality', 80);
