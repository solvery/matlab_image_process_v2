
function gen_img_1(iy, ix, cut)

img_1 = rand(iy, ix, 3);
img_1(1:cut,:,:) = 0;

imwrite(img_1, ['img_rand3_mid_' num2str(iy,'%04d') 'p_' num2str(cut,'%04d') '.png']);


