
clear;

img_1 = rand(1080,1920,3);
img_1(1:120,:,:) = 1;
text_str = cell(1,1);
ii=1;
conf_val = [1];
text_str{ii} = ['F' num2str(ii, '%02d') '-' num2str(conf_val(ii),'%04d') ' '];
position = [0 0];
box_color = { 'black' };


img_2 = insertText(img_1,position, text_str, 'FontSize',40,'BoxColor', box_color,'BoxOpacity',1,'TextColor','white');
imwrite(img_2, 'img_rand3_mid_fcount.png');

