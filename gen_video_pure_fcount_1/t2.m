
img_1 = imread('1080p-gray-mc.png');
%img_1 = rand(1080, 1920, 3);
num = 123
text_str = cell(16,1);
conf_val = [ num num num num num num num num  num num num num num num num num];
for ii=1:16
    ii
    text_str{ii} = ['F' num2str(ii, '%02d') '-' num2str(conf_val(ii),'%04d') ' '];
end
position = [ 192 0; 192 135*1; 192 135*2; 192 135*3; 192 135*4; 192 135*5; 192 135*6; 192 135*7; 1152 0; 1152 135*1; 1152 135*2; 1152 135*3; 1152 135*4; 1152 135*5; 1152 135*6; 1152 135*7 ];
box_color = { 'black', 'black','black', 'black', 'black', 'black','black', 'black', 'black', 'black','black', 'black', 'black', 'black','black', 'black' };

img_out = insertText(img_1,position, text_str, 'FontSize',80,'BoxColor', box_color,'TextColor','white');

figure 
imshow(img_out)


