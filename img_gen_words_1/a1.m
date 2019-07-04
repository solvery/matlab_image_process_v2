clear;

ix = 1920;
iy = 1080;
img_1 = ones(iy, ix, 3);



text_pos = [10 10];
text_str = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
box_color = 'black';
img_2 = insertText(img_1, text_pos, text_str, 'FontSize', 8, 'BoxColor', box_color,'TextColor','yellow');
imshow(img_2);