img_1 = rand(1080,1920,3);                          gen_video_1(img_1, 'video_rand3_mid_fcount_p1_1080p_', 1, 60);
img_1 = rand(1080,1920,3); img_1(1:108*2,:,:) = 0;  gen_video_1(img_1, 'video_rand3_mid_fcount_p2_1080p_', 1, 60);
img_1 = rand(1080,1920,3); img_1(1:108*4,:,:) = 0;  gen_video_1(img_1, 'video_rand3_mid_fcount_p3_1080p_', 1, 60);
img_1 = rand(1080,1920,3); img_1(1:108*6,:,:) = 0;  gen_video_1(img_1, 'video_rand3_mid_fcount_p4_1080p_', 1, 60);
img_1 = rand(1080,1920,3); img_1(1:108*8,:,:) = 0;  gen_video_1(img_1, 'video_rand3_mid_fcount_p5_1080p_', 1, 60);
img_1 = rand(1080,1920,3); img_1(:,:,:)       = 0;  gen_video_1(img_1, 'video_rand3_mid_fcount_p0_1080p_', 1, 60);
 
