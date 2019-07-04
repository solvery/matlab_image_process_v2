
function img_out = gen_img_rand_grids_1(ix, iy)
img_1 = rand(ix, iy, 3);

for i = 1:1:ix
    img_1(i,:,1) = i/ix;
end
 
img_2_1 = imresize(img_2, [ix, iy], 'nearest');
img_3_1 = imresize(img_3, [ix, iy], 'nearest');
img_out = (img_1 + img_2_1 + img_3_1)/3;

