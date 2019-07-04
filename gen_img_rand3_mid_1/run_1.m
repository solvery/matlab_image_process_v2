clear;
step = 120;
for cut = 0:step:2160
    gen_img_1(2160, 3840, cut);
end

step = 60;
for cut = 0:step:1080
    gen_img_1(1080, 1920, cut);
end
