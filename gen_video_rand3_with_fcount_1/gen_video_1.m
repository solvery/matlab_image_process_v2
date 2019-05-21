
function gen_video_1(step, frame_rate)

img_1 = rand(1080, 1920, 3);
filename='video_rand3_slide_right_1';

fn_out = [filename '_1080_f' num2str(frame_rate,'%02d') ];
video_1 = VideoWriter(fn_out);
video_1.FrameRate = frame_rate;
open(video_1);

for pos = step:step:1920
    img_2 = img_1;
    img_2(:,1:pos,:) = 0;
    writeVideo(video_1, img_2);
end
for pos = 1920:-step:step
    img_2 = img_1;
    img_2(:,1:pos,:) = 0;
    writeVideo(video_1, img_2);
end

