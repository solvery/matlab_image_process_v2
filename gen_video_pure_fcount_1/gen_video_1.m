
function gen_video_1(img_fn, vfn_prefix, step, frame_rate)

img_1 = imread(img_fn);
%img_1 = imread('excel-detail-1080p.png');
%img_1 = rand(1080, 1920, 3);
filename=vfn_prefix;

fn_out = [filename '_1080_f' num2str(frame_rate,'%02d') ];
video_1 = VideoWriter(fn_out, 'Uncompressed AVI' );
video_1.FrameRate = frame_rate;
open(video_1);


text_str = cell(16,1);
position = [ 192 0; 192 135*1; 192 135*2; 192 135*3; 192 135*4; 192 135*5; 192 135*6; 192 135*7; 1152 0; 1152 135*1; 1152 135*2; 1152 135*3; 1152 135*4; 1152 135*5; 1152 135*6; 1152 135*7 ];
box_color = { 'black', 'black','black', 'black', 'black', 'black','black', 'black', 'black', 'black','black', 'black', 'black', 'black','black', 'black' };


for pos = 0:step:3000
    conf_val = [pos pos pos pos pos pos pos pos pos pos pos pos pos pos pos pos];
    for ii=1:16
        text_str{ii} = ['F' num2str(ii, '%02d') '-' num2str(conf_val(ii),'%04d') ' '];
    end

    img_2 = insertText(img_1,position, text_str, 'FontSize',80,'BoxColor', box_color,'TextColor','white');
    writeVideo(video_1, img_2);

end
