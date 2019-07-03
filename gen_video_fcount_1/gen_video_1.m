
function gen_video_1(img_in, vfn_prefix, step, frame_rate)

% gen_video_1('mc_blue.png', 'video_mc_blue', 1, 60);

img_1 = rand(100, 200, 3);
img_1(:,:,:) = 0;
%img_1 = imread('excel-detail-1080p.png');
%img_1 = rand(1080, 1920, 3);
filename=vfn_prefix;

fn_out = [filename num2str(frame_rate,'%02d') ];
video_1 = VideoWriter(fn_out, 'Uncompressed AVI' );
video_1.FrameRate = frame_rate;
open(video_1);

text_str = cell(1,1);
position = [0 0];
box_color = { 'black' };
ii = 1;

for pos = 0:step:1000
    conf_val = [mod(pos, frame_rate)];
    
    text_str{ii} = [ num2str(pos,'%04d') '-' num2str(conf_val,'%02d') ' '];

    img_2 = insertText(img_1,position, text_str, 'FontSize',40,'BoxColor', box_color,'BoxOpacity',1,'TextColor','white');
    writeVideo(video_1, img_2);

end
