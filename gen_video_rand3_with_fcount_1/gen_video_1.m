
function gen_video_1(step, frame_rate)

img_1 = rand(1080, 1920, 3);
filename='video_rand3_with_fcount_1';

fn_out = [filename '_1080_f' num2str(frame_rate,'%02d') ];
video_1 = VideoWriter(fn_out);
video_1.FrameRate = frame_rate;
open(video_1);


text_str = cell(4,1);
position = [192 108; 1152 108;  192 648;  1152 648];
box_color = {'black', 'black','black','black'};



for pos = 0:step:6000
    conf_val = [pos pos pos pos];
    for ii=1:4
        text_str{ii} = ['F' num2str(ii) '-' num2str(conf_val(ii),'%04d') ' '];
    end

    img_2 = insertText(img_1,position, text_str, 'FontSize', 80, 'BoxColor', box_color,'TextColor','white');
    writeVideo(video_1, img_2);
end
