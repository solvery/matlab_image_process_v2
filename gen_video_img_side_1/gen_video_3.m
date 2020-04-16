
function gen_video_3(step, frame_rate)

img_1 = imread('..\img_data_1\img (1).jpg');
img_2 = imread('..\img_data_1\img (2).jpg');
img_3 = imread('..\img_data_1\img (3).jpg');
img_t1 = [img_1, img_2, img_3];

filename='video_img_slide_1';

fn_out = [filename '_1080_f' num2str(frame_rate,'%02d') ];
video_1 = VideoWriter(fn_out);
video_1.FrameRate = frame_rate;
open(video_1);

for pos = 1:1:1920*2
    img_t2 = img_t1(:,pos:pos+1920,:);
    writeVideo(video_1, img_t2);
end

