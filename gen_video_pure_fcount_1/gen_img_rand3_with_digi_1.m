
function img_out = gen_video_1(img_in, num)

img_1 = img_in;

text_str = cell(4,1);
conf_val = [num num num num];
for ii=1:4
    text_str{ii} = ['F' num2str(ii) '-' num2str(conf_val(ii),'%04d') ' '];
end
position = [192 108; 1152 108;  192 648;  1152 648];
box_color = {'black', 'black','black','black'};

img_out = insertText(img_1,position, text_str, 'FontSize',88,'BoxColor',...
    box_color,'TextColor','white');

