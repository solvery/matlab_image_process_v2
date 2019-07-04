
function gen_video_1(frame_rate)

% gen_video_1('mc_blue.png', 'video_mc_blue', 1, 60);

img_1 = imread('img\chroma-subsampling-444-422-420-test-1080p-1.png');
img_2 = imread('img\chroma-subsampling-444-422-420-test-1080p-1-1.png');
img_3 = imread('img\chroma-subsampling-444-422-420-test-1080p-2.png');
img_4 = imread('img\chroma-subsampling-444-422-420-test-1080p-2-1.png');
%img_1 = imread('excel-detail-1080p.png');
%img_1 = rand(1080, 1920, 3);
filename='video_422_test_1';
step=1;

fn_out = [filename '_1080_f' num2str(frame_rate,'%02d') ];
video_1 = VideoWriter(fn_out, 'Uncompressed AVI' );
video_1.FrameRate = frame_rate;


open(video_1);

for pos = 0:step:10
    writeVideo(video_1, img_3);
    writeVideo(video_1, img_4);

end

close(video_1);
