
function img_out = gen_img_rand_grids_1(ix, iy)
img_1 = rand(ix, iy, 3);
img_2 = rand(fix(ix/8), fix(iy/8), 3);
img_3 = rand(fix(ix/16), fix(iy/16), 3);
img_4 = rand(fix(ix/24), fix(iy/24), 3);
 
img_2_1 = imresize(img_2, [ix, iy], 'nearest');
img_4_1 = imresize(img_4, [ix, iy], 'nearest');
img_5 = imadd(img_1, img_4_1);

img_out = (img_5);