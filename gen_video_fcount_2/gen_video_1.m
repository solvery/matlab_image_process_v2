
function gen_video_1(img_in, vfn_prefix, step, frame_rate)

% gen_video_1('mc_blue.png', 'video_mc_blue', 1, 60);

img_1 = zeros(100, 150, 3);

filename=vfn_prefix;

fn_out = [filename num2str(frame_rate,'%02d') ];
video_1 = VideoWriter(fn_out, 'Uncompressed AVI' );
video_1.FrameRate = frame_rate;
open(video_1);

text_str = cell(1,1);
position = [0 0];
box_color = { 'black' };
ii = 1;

for ix = 0:1:99
    for iy = 1:1:frame_rate
        text_str{ii} = [ num2str(ix,'%02d') '-' num2str(iy,'%02d') ];
        img_2 = insertText(img_1,position, text_str, 'FontSize',40,'BoxColor', box_color,'BoxOpacity',1,'TextColor','white');
        writeVideo(video_1, img_2);
    end
end
