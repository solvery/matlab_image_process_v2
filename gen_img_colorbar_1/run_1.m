color;

img_1 = gen_img_colorbar_1(1080, 1920);
imwrite(img_1, 'colorbar_1080p.png');
img_1 = gen_img_colorbar_1(2160, 3840);
imwrite(img_1, 'colorbar_2160p.png');
