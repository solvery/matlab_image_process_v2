img_1 = rand(1080,1920,3); 
img_1(1:1080/1,:,:) = 1;  gen_video_1(img_1, 'video_rand3_mid_fcount_p1_1080p_', 1, 60);
img_1(1:1080/2,:,:) = 1;  gen_video_1(img_1, 'video_rand3_mid_fcount_p2_1080p_', 1, 60);
img_1(1:1080/3,:,:) = 1;  gen_video_1(img_1, 'video_rand3_mid_fcount_p3_1080p_', 1, 60);
img_1(1:1080/4,:,:) = 1;  gen_video_1(img_1, 'video_rand3_mid_fcount_p4_1080p_', 1, 60);
img_1(1:1080/5,:,:) = 1;  gen_video_1(img_1, 'video_rand3_mid_fcount_p5_1080p_', 1, 60);

img_1(1080/1:1080,:,:) = 1;  gen_video_1(img_1, 'video_rand3_mid_fcount_q1_1080p_', 1, 60);
img_1(1080/2:1080,:,:) = 1;  gen_video_1(img_1, 'video_rand3_mid_fcount_q2_1080p_', 1, 60);
img_1(1080/3:1080,:,:) = 1;  gen_video_1(img_1, 'video_rand3_mid_fcount_q3_1080p_', 1, 60);
img_1(1080/4:1080,:,:) = 1;  gen_video_1(img_1, 'video_rand3_mid_fcount_q4_1080p_', 1, 60);
img_1(1080/5:1080,:,:) = 1;  gen_video_1(img_1, 'video_rand3_mid_fcount_q5_1080p_', 1, 60);

img_1 = rand(2160,3840,3); 
img_1(1:2160/1,:,:) = 1;  gen_video_1(img_1, 'video_rand3_mid_fcount_p1_2160p_', 1, 30);
img_1(1:2160/2,:,:) = 1;  gen_video_1(img_1, 'video_rand3_mid_fcount_p2_2160p_', 1, 30);
img_1(1:2160/3,:,:) = 1;  gen_video_1(img_1, 'video_rand3_mid_fcount_p3_2160p_', 1, 30);
img_1(1:2160/4,:,:) = 1;  gen_video_1(img_1, 'video_rand3_mid_fcount_p4_2160p_', 1, 30);
img_1(1:2160/5,:,:) = 1;  gen_video_1(img_1, 'video_rand3_mid_fcount_p5_2160p_', 1, 30);

img_1(2160/1:2160,:,:) = 1;  gen_video_1(img_1, 'video_rand3_mid_fcount_q1_2160p_', 1, 30);
img_1(2160/2:2160,:,:) = 1;  gen_video_1(img_1, 'video_rand3_mid_fcount_q2_2160p_', 1, 30);
img_1(2160/3:2160,:,:) = 1;  gen_video_1(img_1, 'video_rand3_mid_fcount_q3_2160p_', 1, 30);
img_1(2160/4:2160,:,:) = 1;  gen_video_1(img_1, 'video_rand3_mid_fcount_q4_2160p_', 1, 30);
img_1(2160/5:2160,:,:) = 1;  gen_video_1(img_1, 'video_rand3_mid_fcount_q5_2160p_', 1, 30);
