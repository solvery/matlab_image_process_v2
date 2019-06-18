
function img_out = gen_img_ycbcr_1_1(ix, iy)

% ix=3840;
% iy=2160;

img_1 = rand(iy,ix,3);
img_1_1 = img_1;

for i = 1:1:ix
    img_1(:,i,1) = sin(i/ix*pi*0.9);
    img_1(:,i,2) = i/ix;
end
% for i = 1:1:iy
%     img_1(i,:,1) = i/iy*0.8;
% end
img_2 = ycbcr2rgb(img_1);

img_out = img_2;