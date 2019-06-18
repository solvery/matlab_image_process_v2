
function img_out = gen_img_ycbcr_1(ix, iy)

% ix=3840;
% iy=2160;

img_1 = rand(iy,ix,3);
img_1_1 = img_1;

for x = 1:1:ix
    img_1(:,x,1:2) = x/ix;
end
img_2 = ycbcr2rgb(img_1);

img_out = img_2;