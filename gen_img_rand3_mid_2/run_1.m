clear;


step = 0.2;
for cut = 0:step:1
    gen_img_1(1080, 1920, fix(1080*cut));
    gen_img_1(2160, 3840, fix(2160*cut));
end
