
function img_out = gen_img_ycbcr_3(iy, ix)

% ix=3840;
% iy=2160;

img_1 = rand(iy,ix,3);
img_1_1 = img_1;

for i = 1:1:iy
    img_1(:,i,1) = i/iy;
end
img_2 = rand(fix(iy/16), fix(ix/16),1);
img_2_1 = imresize(img_2, [iy, ix], 'nearest');
img_1(:,:,2) = img_2_1;

img_2 = ycbcr2rgb(img_1);

img_out = img_2;